create or replace function public.match_payload_numeric(raw_value text)
returns numeric
language plpgsql
immutable
as $$
declare
  normalized text;
begin
  if raw_value is null then
    return null;
  end if;

  normalized := regexp_replace(btrim(raw_value), '[[:space:]%]', '', 'g');

  if normalized = '' or normalized = 'null' then
    return null;
  end if;

  if position(',' in normalized) > 0 then
    normalized := replace(normalized, '.', '');
    normalized := replace(normalized, ',', '.');
  elsif normalized ~ '^-?[0-9]{1,3}(\.[0-9]{3})+$' then
    normalized := replace(normalized, '.', '');
  end if;

  if normalized !~ '^-?[0-9]+(\.[0-9]+)?$' then
    return null;
  end if;

  return normalized::numeric;
end;
$$;

create or replace function public.match_payload_integer(raw_value text)
returns integer
language plpgsql
immutable
as $$
declare
  parsed numeric;
begin
  parsed := public.match_payload_numeric(raw_value);

  if parsed is null then
    return null;
  end if;

  return trunc(parsed)::integer;
end;
$$;

create or replace function public.sync_parceria_vive_2026_2_updated_leaderboard()
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  target_championship_id uuid;
begin
  select id
  into target_championship_id
  from public.championships
  where slug = 'parceria-vive-2026-2';

  if target_championship_id is null then
    return;
  end if;

  with real_leaderboard (name, final_mmr) as (
    values
      ('Dyasz', 2733),
      ('Ficc', 2303),
      ('Buda', 2227),
      ('Bughi', 2122),
      ('Mupthyy', 1886),
      ('ValenteXX', 1820),
      ('Kodex', 1754),
      ('kauzadOr', 1700),
      ('tubinha1', 1688),
      ('Jouuzera', 1533),
      ('Deft de atenção', 1447),
      ('Thiaguin7x', 1375),
      ('Decade', 1096),
      ('deuzao, o proibido', 1042),
      ('Nightblu3', 840),
      ('xusKAO', 659),
      ('Andrews', 645),
      ('tiger?¿', 519),
      ('shioNNN', 513),
      ('Borapae', 433)
  )
  insert into public.players (championship_id, name, initial_mmr, final_mmr)
  select target_championship_id, real_leaderboard.name, 833, real_leaderboard.final_mmr
  from real_leaderboard
  on conflict (championship_id, name) do nothing;

  with real_leaderboard (name, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate) as (
    values
      ('Dyasz', 2733, 1, 12, 5, 70),
      ('Ficc', 2303, 2, 14, 9, 60),
      ('Buda', 2227, 3, 9, 4, 69),
      ('Bughi', 2122, 4, 17, 13, 56),
      ('Mupthyy', 1886, 5, 5, 1, 83),
      ('ValenteXX', 1820, 6, 7, 4, 63),
      ('Kodex', 1754, 7, 10, 8, 55),
      ('kauzadOr', 1700, 8, 8, 6, 57),
      ('tubinha1', 1688, 9, 9, 6, 60),
      ('Jouuzera', 1533, 10, 15, 15, 50),
      ('Deft de atenção', 1447, 11, 14, 16, 46),
      ('Thiaguin7x', 1375, 12, 13, 15, 46),
      ('Decade', 1096, 13, 7, 8, 46),
      ('deuzao, o proibido', 1042, 14, 8, 11, 42),
      ('Nightblu3', 840, 15, 3, 5, 37),
      ('xusKAO', 659, 16, 0, 1, 0),
      ('Andrews', 645, 17, 2, 4, 33),
      ('tiger?¿', 519, 18, 0, 2, 0),
      ('shioNNN', 513, 19, 0, 2, 0),
      ('Borapae', 433, 20, 2, 6, 25)
  )
  update public.players p
  set
    final_mmr = real_leaderboard.final_mmr,
    reported_rank = real_leaderboard.reported_rank,
    reported_wins = real_leaderboard.reported_wins,
    reported_losses = real_leaderboard.reported_losses,
    reported_winrate = real_leaderboard.reported_winrate
  from real_leaderboard
  where p.championship_id = target_championship_id
    and p.name = real_leaderboard.name;

  with real_leaderboard (name) as (
    values
      ('Dyasz'),
      ('Ficc'),
      ('Buda'),
      ('Bughi'),
      ('Mupthyy'),
      ('ValenteXX'),
      ('Kodex'),
      ('kauzadOr'),
      ('tubinha1'),
      ('Jouuzera'),
      ('Deft de atenção'),
      ('Thiaguin7x'),
      ('Decade'),
      ('deuzao, o proibido'),
      ('Nightblu3'),
      ('xusKAO'),
      ('Andrews'),
      ('tiger?¿'),
      ('shioNNN'),
      ('Borapae')
  )
  update public.players p
  set reported_rank = null
  where p.championship_id = target_championship_id
    and not exists (
      select 1
      from real_leaderboard
      where real_leaderboard.name = p.name
    );
end;
$$;

select public.sync_parceria_vive_2026_2_updated_leaderboard();

create or replace function public.update_match_details(
  championship_slug text,
  target_match_number integer,
  payload jsonb
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  target_championship_id uuid;
  target_match_id uuid;
  participant jsonb;
  target_player_id uuid;
begin
  if not exists (
    select 1
    from public.admin_users
    where user_id = auth.uid()
  ) then
    raise exception 'Permissão administrativa necessária.';
  end if;

  select id
  into target_championship_id
  from public.championships
  where slug = championship_slug;

  if target_championship_id is null then
    raise exception 'Campeonato não encontrado.';
  end if;

  select id
  into target_match_id
  from public.matches
  where championship_id = target_championship_id
    and match_number = target_match_number;

  if target_match_id is null then
    raise exception 'Partida não encontrada.';
  end if;

  update public.matches
  set
    winner_side = coalesce(nullif(payload->>'winnerSide', ''), winner_side),
    queue_type = coalesce(nullif(payload->>'queueType', ''), queue_type),
    map_name = coalesce(nullif(payload->>'mapName', ''), map_name),
    duration_seconds = public.match_payload_integer(payload->>'durationSeconds'),
    played_at = nullif(payload->>'playedAt', '')::timestamptz,
    game_id = nullif(payload->>'gameId', ''),
    blue_kills = public.match_payload_integer(payload->>'blueKills'),
    red_kills = public.match_payload_integer(payload->>'redKills'),
    blue_towers = public.match_payload_integer(payload->>'blueTowers'),
    red_towers = public.match_payload_integer(payload->>'redTowers'),
    blue_dragons = public.match_payload_integer(payload->>'blueDragons'),
    red_dragons = public.match_payload_integer(payload->>'redDragons'),
    blue_barons = public.match_payload_integer(payload->>'blueBarons'),
    red_barons = public.match_payload_integer(payload->>'redBarons'),
    blue_heralds = public.match_payload_integer(payload->>'blueHeralds'),
    red_heralds = public.match_payload_integer(payload->>'redHeralds'),
    blue_inhibitors = public.match_payload_integer(payload->>'blueInhibitors'),
    red_inhibitors = public.match_payload_integer(payload->>'redInhibitors'),
    blue_bans = coalesce(array(select jsonb_array_elements_text(coalesce(payload->'blueBans', '[]'::jsonb))), '{}'),
    red_bans = coalesce(array(select jsonb_array_elements_text(coalesce(payload->'redBans', '[]'::jsonb))), '{}')
  where id = target_match_id;

  delete from public.match_players
  where match_id = target_match_id;

  for participant in select jsonb_array_elements(coalesce(payload->'players', '[]'::jsonb))
  loop
    select id
    into target_player_id
    from public.players
    where championship_id = target_championship_id
      and name = participant->>'playerName';

    if target_player_id is null then
      raise exception 'Jogador não encontrado: %', participant->>'playerName';
    end if;

    insert into public.match_players (
      match_id,
      player_id,
      side,
      role,
      lp_delta,
      champion_name,
      champion_icon_url,
      level,
      rank_label,
      kills,
      deaths,
      assists,
      creep_score,
      gold_earned,
      kill_participation,
      vision_score,
      damage_dealt_champions,
      damage_taken,
      turret_damage,
      wards_placed,
      wards_killed,
      summoner_spells,
      items,
      runes
    )
    values (
      target_match_id,
      target_player_id,
      coalesce(nullif(participant->>'side', ''), 'blue'),
      coalesce(nullif(participant->>'role', ''), 'UNK'),
      coalesce(public.match_payload_integer(participant->>'lpDelta'), 0),
      nullif(participant->>'championName', ''),
      nullif(participant->>'championIconUrl', ''),
      public.match_payload_integer(participant->>'level'),
      nullif(participant->>'rankLabel', ''),
      public.match_payload_integer(participant->>'kills'),
      public.match_payload_integer(participant->>'deaths'),
      public.match_payload_integer(participant->>'assists'),
      public.match_payload_integer(participant->>'creepScore'),
      public.match_payload_integer(participant->>'goldEarned'),
      public.match_payload_numeric(participant->>'killParticipation'),
      public.match_payload_integer(participant->>'visionScore'),
      public.match_payload_integer(participant->>'damageDealtChampions'),
      public.match_payload_integer(participant->>'damageTaken'),
      public.match_payload_integer(participant->>'turretDamage'),
      public.match_payload_integer(participant->>'wardsPlaced'),
      public.match_payload_integer(participant->>'wardsKilled'),
      coalesce(array(select jsonb_array_elements_text(coalesce(participant->'summonerSpells', '[]'::jsonb))), '{}'),
      coalesce(array(select jsonb_array_elements_text(coalesce(participant->'items', '[]'::jsonb))), '{}'),
      coalesce(array(select jsonb_array_elements_text(coalesce(participant->'runes', '[]'::jsonb))), '{}')
    );
  end loop;

  if championship_slug = 'parceria-vive-2026-2' then
    perform public.sync_parceria_vive_2026_2_updated_leaderboard();
  else
    with player_totals as (
      select
        p.id,
        p.initial_mmr + coalesce(sum(mp.lp_delta), 0)::integer as final_mmr,
        count(*) filter (where mp.side = m.winner_side)::integer as wins,
        count(*) filter (where mp.side <> m.winner_side)::integer as losses
      from public.players p
      left join public.match_players mp on mp.player_id = p.id
      left join public.matches m on m.id = mp.match_id and m.championship_id = target_championship_id
      where p.championship_id = target_championship_id
      group by p.id, p.initial_mmr
    ),
    ranked_players as (
      select
        id,
        final_mmr,
        wins,
        losses,
        case
          when wins + losses > 0 then round((wins::numeric / (wins + losses)) * 100, 2)
          else 0
        end as winrate,
        rank() over (order by final_mmr desc) as rank
      from player_totals
    )
    update public.players p
    set
      final_mmr = ranked_players.final_mmr,
      reported_wins = ranked_players.wins,
      reported_losses = ranked_players.losses,
      reported_winrate = ranked_players.winrate,
      reported_rank = ranked_players.rank
    from ranked_players
    where p.id = ranked_players.id;
  end if;
end;
$$;

grant execute on function public.update_match_details(text, integer, jsonb) to authenticated;

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
    duration_seconds = nullif(payload->>'durationSeconds', '')::integer,
    played_at = nullif(payload->>'playedAt', '')::timestamptz,
    game_id = nullif(payload->>'gameId', ''),
    blue_kills = nullif(payload->>'blueKills', '')::integer,
    red_kills = nullif(payload->>'redKills', '')::integer,
    blue_towers = nullif(payload->>'blueTowers', '')::integer,
    red_towers = nullif(payload->>'redTowers', '')::integer,
    blue_dragons = nullif(payload->>'blueDragons', '')::integer,
    red_dragons = nullif(payload->>'redDragons', '')::integer,
    blue_barons = nullif(payload->>'blueBarons', '')::integer,
    red_barons = nullif(payload->>'redBarons', '')::integer,
    blue_heralds = nullif(payload->>'blueHeralds', '')::integer,
    red_heralds = nullif(payload->>'redHeralds', '')::integer,
    blue_inhibitors = nullif(payload->>'blueInhibitors', '')::integer,
    red_inhibitors = nullif(payload->>'redInhibitors', '')::integer,
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
      coalesce(nullif(participant->>'lpDelta', '')::integer, 0),
      nullif(participant->>'championName', ''),
      nullif(participant->>'championIconUrl', ''),
      nullif(participant->>'level', '')::integer,
      nullif(participant->>'rankLabel', ''),
      nullif(participant->>'kills', '')::integer,
      nullif(participant->>'deaths', '')::integer,
      nullif(participant->>'assists', '')::integer,
      nullif(participant->>'creepScore', '')::integer,
      nullif(participant->>'goldEarned', '')::integer,
      nullif(participant->>'killParticipation', '')::numeric,
      nullif(participant->>'visionScore', '')::integer,
      nullif(participant->>'damageDealtChampions', '')::integer,
      nullif(participant->>'damageTaken', '')::integer,
      nullif(participant->>'turretDamage', '')::integer,
      nullif(participant->>'wardsPlaced', '')::integer,
      nullif(participant->>'wardsKilled', '')::integer,
      coalesce(array(select jsonb_array_elements_text(coalesce(participant->'summonerSpells', '[]'::jsonb))), '{}'),
      coalesce(array(select jsonb_array_elements_text(coalesce(participant->'items', '[]'::jsonb))), '{}'),
      coalesce(array(select jsonb_array_elements_text(coalesce(participant->'runes', '[]'::jsonb))), '{}')
    );
  end loop;
end;
$$;

grant execute on function public.update_match_details(text, integer, jsonb) to authenticated;

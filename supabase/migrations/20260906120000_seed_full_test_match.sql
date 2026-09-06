with target_championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026'
),
upserted_match as (
  insert into public.matches (
    championship_id,
    match_number,
    winner_side,
    queue_type,
    map_name,
    duration_seconds,
    played_at,
    game_id,
    blue_kills,
    red_kills,
    blue_towers,
    red_towers,
    blue_dragons,
    red_dragons,
    blue_barons,
    red_barons,
    blue_heralds,
    red_heralds,
    blue_inhibitors,
    red_inhibitors,
    blue_bans,
    red_bans,
    raw_data
  )
  select
    id,
    999,
    'blue',
    'Personalizada',
    'Summoner''s Rift',
    1984,
    '2026-09-06 20:30:00-04',
    'TESTE-LOL-999',
    38,
    27,
    9,
    4,
    3,
    1,
    1,
    0,
    1,
    0,
    2,
    0,
    array['Darius', 'Kayn', 'Lux', 'Lucian', 'Nautilus'],
    array['Gwen', 'Nocturne', 'Akali', 'Ezreal', 'Milio'],
    '{"source": "seed-full-test-match", "note": "Partida ficticia para validar layout"}'::jsonb
  from target_championship
  on conflict (championship_id, match_number) do update set
    winner_side = excluded.winner_side,
    queue_type = excluded.queue_type,
    map_name = excluded.map_name,
    duration_seconds = excluded.duration_seconds,
    played_at = excluded.played_at,
    game_id = excluded.game_id,
    blue_kills = excluded.blue_kills,
    red_kills = excluded.red_kills,
    blue_towers = excluded.blue_towers,
    red_towers = excluded.red_towers,
    blue_dragons = excluded.blue_dragons,
    red_dragons = excluded.red_dragons,
    blue_barons = excluded.blue_barons,
    red_barons = excluded.red_barons,
    blue_heralds = excluded.blue_heralds,
    red_heralds = excluded.red_heralds,
    blue_inhibitors = excluded.blue_inhibitors,
    red_inhibitors = excluded.red_inhibitors,
    blue_bans = excluded.blue_bans,
    red_bans = excluded.red_bans,
    raw_data = excluded.raw_data
  returning id, championship_id
),
target_match as (
  select id, championship_id
  from upserted_match
  union all
  select m.id, m.championship_id
  from public.matches m
  inner join target_championship c on c.id = m.championship_id
  where m.match_number = 999
  limit 1
),
clean_match_players as (
  delete from public.match_players mp
  using target_match tm
  where mp.match_id = tm.id
  returning mp.id
),
player_rows (
  player_name,
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
) as (
  values
    (
      'Tubinha', 'blue', 'TOP', 24, 'Aatrox',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Aatrox.png',
      17, 'Diamante', 9, 4, 11, 226, 14890, 52.63, 22, 31540, 28710, 6350, 10, 3,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerTeleport.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1054.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3053.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png'
      ],
      array['Conquistador', 'Determinação']
    ),
    (
      'Valente', 'blue', 'JNG', 21, 'Lee Sin',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/LeeSin.png',
      16, 'Mestre', 6, 5, 18, 178, 13240, 63.16, 34, 25820, 30110, 1840, 13, 9,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerSmite.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6630.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3053.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png'
      ],
      array['Conquistador', 'Inspiração']
    ),
    (
      'Bughi', 'blue', 'MID', 19, 'Ahri',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Ahri.png',
      17, 'Diamante', 11, 3, 13, 241, 15760, 63.16, 19, 34210, 18240, 2750, 9, 4,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerDot.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3020.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4645.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3102.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3089.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1058.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png'
      ],
      array['Eletrocutar', 'Feitiçaria']
    ),
    (
      'Deft', 'blue', 'ADC', 23, 'Jinx',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Jinx.png',
      16, 'Mestre', 10, 7, 9, 286, 16820, 50.00, 15, 38950, 16730, 7240, 8, 5,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerHeal.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6672.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3085.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3036.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1038.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png'
      ],
      array['Ritmo Fatal', 'Inspiração']
    ),
    (
      'Agressivinho', 'blue', 'SUP', 18, 'Thresh',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Thresh.png',
      14, 'Grão-Mestre', 2, 8, 27, 41, 9450, 76.32, 71, 12860, 25100, 910, 47, 18,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerExhaust.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3860.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3117.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3109.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1029.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png'
      ],
      array['Pós-choque', 'Inspiração']
    ),
    (
      'Gui Barbosa', 'red', 'TOP', -17, 'Ornn',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Ornn.png',
      16, 'Diamante', 4, 8, 12, 214, 12620, 59.26, 18, 20940, 42110, 3920, 7, 2,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerTeleport.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1054.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6662.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1033.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png'
      ],
      array['Aperto dos Mortos-Vivos', 'Inspiração']
    ),
    (
      'Nightblu3', 'red', 'JNG', -15, 'Viego',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Viego.png',
      15, 'Esmeralda', 7, 9, 8, 169, 11980, 55.56, 28, 24670, 28940, 1360, 11, 8,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerSmite.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3078.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1037.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png'
      ],
      array['Conquistador', 'Dominação']
    ),
    (
      'JP', 'red', 'MID', -19, 'Syndra',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Syndra.png',
      16, 'Diamante', 8, 6, 6, 232, 13450, 51.85, 16, 30110, 15420, 1180, 8, 4,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerTeleport.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3020.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4645.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3135.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1058.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png'
      ],
      array['Primeiro Ataque', 'Feitiçaria']
    ),
    (
      'Gabão', 'red', 'ADC', -14, 'Kai''Sa',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Kaisa.png',
      15, 'Platina', 6, 7, 9, 251, 14220, 55.56, 14, 33240, 17380, 4560, 6, 2,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerHeal.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6672.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3139.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3036.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1038.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png'
      ],
      array['Chuva de Lâminas', 'Inspiração']
    ),
    (
      'Borapae', 'red', 'SUP', -16, 'Rakan',
      'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/Rakan.png',
      14, 'Ouro', 2, 8, 18, 37, 9020, 74.07, 63, 10480, 19880, 720, 42, 16,
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerFlash.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/spell/SummonerExhaust.png'
      ],
      array[
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3860.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2065.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1004.png',
        'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png'
      ],
      array['Guardião', 'Dominação']
    )
)
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
select
  tm.id,
  p.id,
  pr.side,
  pr.role,
  pr.lp_delta,
  pr.champion_name,
  pr.champion_icon_url,
  pr.level,
  pr.rank_label,
  pr.kills,
  pr.deaths,
  pr.assists,
  pr.creep_score,
  pr.gold_earned,
  pr.kill_participation,
  pr.vision_score,
  pr.damage_dealt_champions,
  pr.damage_taken,
  pr.turret_damage,
  pr.wards_placed,
  pr.wards_killed,
  pr.summoner_spells,
  pr.items,
  pr.runes
from player_rows pr
inner join target_match tm on true
inner join public.players p on p.championship_id = tm.championship_id and p.name = pr.player_name;

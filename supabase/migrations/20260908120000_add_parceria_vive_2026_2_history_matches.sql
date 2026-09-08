with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
player_names (name) as (
  values
    ('Argemon'), ('JP'), ('Bughi'), ('ValenteXX'), ('Dyasz'),
    ('Ficc'), ('Andrews'), ('tubinha1'), ('Mupthyy'), ('Deft de atenção'),
    ('Kodex'), ('deuzao, o proibido'), ('Jouuzera'), ('Thiaguin7x'),
    ('kauzadOr'), ('Buda'), ('tiger?¿'), ('Borapae')
)
insert into public.players (championship_id, name, initial_mmr, final_mmr)
select championship.id, player_names.name, 833, 833
from championship, player_names
on conflict (championship_id, name) do nothing;

with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
matches_data (match_number, winner_side, played_at, game_id) as (
  values
    (17, 'blue', '2026-09-07 17:37:00-04'::timestamptz, 'dac7b0d3'),
    (18, 'blue', '2026-09-07 18:40:00-04'::timestamptz, 'a58fb57c'),
    (19, 'red', '2026-09-07 19:43:00-04'::timestamptz, 'da3a4b81'),
    (20, 'blue', '2026-09-07 20:28:00-04'::timestamptz, '1517aa69'),
    (21, 'blue', '2026-09-07 21:32:00-04'::timestamptz, '22acb381'),
    (22, 'blue', '2026-09-07 23:35:00-04'::timestamptz, 'fd4e7c3c'),
    (23, 'blue', '2026-09-07 23:51:00-04'::timestamptz, 'aadd4c89'),
    (24, 'red', '2026-09-08 00:45:00-04'::timestamptz, '22239f91')
)
insert into public.matches (
  championship_id,
  match_number,
  winner_side,
  queue_type,
  map_name,
  played_at,
  game_id
)
select
  championship.id,
  matches_data.match_number,
  matches_data.winner_side,
  'Personalizada',
  'Summoner''s Rift',
  matches_data.played_at,
  matches_data.game_id
from championship, matches_data
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  queue_type = excluded.queue_type,
  map_name = excluded.map_name,
  played_at = excluded.played_at,
  game_id = excluded.game_id;

with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
)
delete from public.match_players mp
using public.matches m, championship c
where mp.match_id = m.id
  and m.championship_id = c.id
  and m.match_number between 17 and 24;

with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
match_players_data (match_number, player_name, side, role, lp_delta) as (
  values
    -- match 17 = game dac7b0d3 (blue wins)
    (17, 'tubinha1', 'blue', 'TOP', 165),
    (17, 'Ficc', 'blue', 'JNG', 124),
    (17, 'Andrews', 'blue', 'MID', 245),
    (17, 'Deft de atenção', 'blue', 'ADC', 108),
    (17, 'Mupthyy', 'blue', 'SUP', 239),
    (17, 'JP', 'red', 'TOP', -78),
    (17, 'Argemon', 'red', 'JNG', -100),
    (17, 'Dyasz', 'red', 'MID', -108),
    (17, 'Bughi', 'red', 'ADC', -74),
    (17, 'ValenteXX', 'red', 'SUP', -121),
    -- match 18 = game a58fb57c (blue wins)
    (18, 'tubinha1', 'blue', 'TOP', 134),
    (18, 'Ficc', 'blue', 'JNG', 103),
    (18, 'Andrews', 'blue', 'MID', 195),
    (18, 'Deft de atenção', 'blue', 'ADC', 89),
    (18, 'ValenteXX', 'blue', 'SUP', 156),
    (18, 'Kodex', 'red', 'TOP', -82),
    (18, 'JP', 'red', 'JNG', -61),
    (18, 'deuzao, o proibido', 'red', 'MID', -72),
    (18, 'Bughi', 'red', 'ADC', -58),
    (18, 'Mupthyy', 'red', 'SUP', -108),
    -- match 19 = game da3a4b81 (red wins)
    (19, 'kauzadOr', 'blue', 'TOP', -107),
    (19, 'Argemon', 'blue', 'JNG', -109),
    (19, 'Andrews', 'blue', 'MID', -147),
    (19, 'Deft de atenção', 'blue', 'ADC', -81),
    (19, 'Dyasz', 'blue', 'SUP', -116),
    (19, 'tubinha1', 'red', 'TOP', 170),
    (19, 'Thiaguin7x', 'red', 'JNG', 120),
    (19, 'Jouuzera', 'red', 'MID', 114),
    (19, 'Bughi', 'red', 'ADC', 110),
    (19, 'ValenteXX', 'red', 'SUP', 195),
    -- match 20 = game 1517aa69 (blue wins)
    (20, 'Kodex', 'blue', 'TOP', 143),
    (20, 'Buda', 'blue', 'JNG', 168),
    (20, 'Jouuzera', 'blue', 'MID', 95),
    (20, 'Bughi', 'blue', 'ADC', 92),
    (20, 'Thiaguin7x', 'blue', 'SUP', 99),
    (20, 'tiger?¿', 'red', 'TOP', -148),
    (20, 'JP', 'red', 'JNG', -70),
    (20, 'Dyasz', 'red', 'MID', -92),
    (20, 'Deft de atenção', 'red', 'ADC', -66),
    (20, 'ValenteXX', 'red', 'SUP', -98),
    -- match 21 = game 22acb381 (blue wins)
    (21, 'tubinha1', 'blue', 'TOP', 155),
    (21, 'Buda', 'blue', 'JNG', 179),
    (21, 'Dyasz', 'blue', 'MID', 155),
    (21, 'Deft de atenção', 'blue', 'ADC', 103),
    (21, 'Thiaguin7x', 'blue', 'SUP', 107),
    (21, 'Kodex', 'red', 'TOP', -99),
    (21, 'Ficc', 'red', 'JNG', -85),
    (21, 'Jouuzera', 'red', 'MID', -72),
    (21, 'Bughi', 'red', 'ADC', -71),
    (21, 'Borapae', 'red', 'SUP', -135),
    -- match 22 = game fd4e7c3c (blue wins)
    (22, 'Kodex', 'blue', 'TOP', 148),
    (22, 'Buda', 'blue', 'JNG', 171),
    (22, 'deuzao, o proibido', 'blue', 'MID', 140),
    (22, 'Deft de atenção', 'blue', 'ADC', 100),
    (22, 'Thiaguin7x', 'blue', 'SUP', 106),
    (22, 'Dyasz', 'red', 'TOP', -98),
    (22, 'JP', 'red', 'JNG', -77),
    (22, 'Ficc', 'red', 'MID', -84),
    (22, 'Jouuzera', 'red', 'ADC', -71),
    (22, 'Borapae', 'red', 'SUP', -129),
    -- match 23 = game aadd4c89 (blue wins)
    (23, 'Dyasz', 'blue', 'TOP', 156),
    (23, 'Buda', 'blue', 'JNG', 178),
    (23, 'Bughi', 'blue', 'MID', 108),
    (23, 'Jouuzera', 'blue', 'ADC', 107),
    (23, 'JP', 'blue', 'SUP', 118),
    (23, 'Kodex', 'red', 'TOP', -102),
    (23, 'Ficc', 'red', 'JNG', -89),
    (23, 'deuzao, o proibido', 'red', 'MID', -98),
    (23, 'Deft de atenção', 'red', 'ADC', -75),
    (23, 'Thiaguin7x', 'red', 'SUP', -79),
    -- match 24 = game 22239f91 (red wins)
    (24, 'tubinha1', 'blue', 'TOP', -110),
    (24, 'Buda', 'blue', 'JNG', -111),
    (24, 'Jouuzera', 'blue', 'MID', -75),
    (24, 'Deft de atenção', 'blue', 'ADC', -75),
    (24, 'Thiaguin7x', 'blue', 'SUP', -77),
    (24, 'Kodex', 'red', 'TOP', 150),
    (24, 'Ficc', 'red', 'JNG', 127),
    (24, 'Dyasz', 'red', 'MID', 152),
    (24, 'Bughi', 'red', 'ADC', 105),
    (24, 'JP', 'red', 'SUP', 116)
)
insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, mpd.side, mpd.role, mpd.lp_delta
from match_players_data mpd
inner join championship c on true
inner join public.matches m on m.championship_id = c.id and m.match_number = mpd.match_number
inner join public.players p on p.championship_id = c.id and p.name = mpd.player_name;

with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
base_leaderboard (name, base_mmr, base_wins, base_losses) as (
  values
    ('Ficc', 1989, 7, 2),
    ('Bughi', 1836, 9, 5),
    ('Mupthyy', 1754, 4, 0),
    ('ValenteXX', 1688, 5, 2),
    ('Dyasz', 1632, 4, 1),
    ('Thiaguin7x', 1583, 7, 5),
    ('Deft de atenção', 1415, 7, 7),
    ('Kodex', 1322, 5, 4),
    ('Jouuzera', 1126, 7, 8),
    ('kauzadOr', 1085, 3, 3),
    ('deuzao, o proibido', 1078, 5, 6),
    ('tubinha1', 1017, 2, 2),
    ('Buda', 953, 1, 1),
    ('Decade', 899, 3, 4),
    ('Nightblu3', 840, 3, 5),
    ('tiger?¿', 666, 0, 1),
    ('Borapae', 624, 1, 3),
    ('Andrews', 522, 0, 2),
    ('shioNNN', 513, 0, 2),
    ('JP', 432, 3, 7)
),
new_totals as (
  select
    p.name,
    coalesce(sum(mp.lp_delta) filter (where m.id is not null), 0)::integer as lp_delta,
    count(*) filter (where m.id is not null and mp.side = m.winner_side)::integer as wins,
    count(*) filter (where m.id is not null and mp.side <> m.winner_side)::integer as losses
  from public.players p
  inner join championship c on c.id = p.championship_id
  left join public.match_players mp on mp.player_id = p.id
  left join public.matches m on m.id = mp.match_id and m.championship_id = c.id and m.match_number between 17 and 24
  where p.name in (select name from base_leaderboard)
  group by p.name
),
updated_leaderboard as (
  select
    base_leaderboard.name,
    base_leaderboard.base_mmr + coalesce(new_totals.lp_delta, 0) as final_mmr,
    base_leaderboard.base_wins + coalesce(new_totals.wins, 0) as wins,
    base_leaderboard.base_losses + coalesce(new_totals.losses, 0) as losses
  from base_leaderboard
  left join new_totals on new_totals.name = base_leaderboard.name
),
ranked_players as (
  select
    name,
    final_mmr,
    wins,
    losses,
    case
      when wins + losses > 0 then round((wins::numeric / (wins + losses)) * 100, 2)
      else 0
    end as winrate,
    rank() over (order by final_mmr desc) as rank
  from updated_leaderboard
)
update public.players p
set
  final_mmr = ranked_players.final_mmr,
  reported_wins = ranked_players.wins,
  reported_losses = ranked_players.losses,
  reported_winrate = ranked_players.winrate,
  reported_rank = ranked_players.rank
from ranked_players
inner join championship c on true
where p.championship_id = c.id
  and p.name = ranked_players.name;

with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
)
update public.players p
set reported_rank = null
from championship c
where p.championship_id = c.id
  and p.name in ('Gabão', 'Argemon');

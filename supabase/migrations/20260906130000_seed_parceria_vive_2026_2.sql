with championship as (
  insert into public.championships (slug, name, initial_mmr, starts_at)
  values ('parceria-vive-2026-2', 'Parceria Vive 2026 - Temporada 2', 833, '2026-09-04')
  on conflict (slug) do update set
    name = excluded.name,
    initial_mmr = excluded.initial_mmr,
    starts_at = excluded.starts_at
  returning id
),
player_names (name) as (
  values
    ('kauzadOr'), ('Ficc'), ('Gabão'), ('deuzao, o proibido'), ('Mupthyy'),
    ('Argemon'), ('tubinha1'), ('Jouuzera'), ('Bughi'), ('Thiaguin7x'),
    ('shioNNN'), ('JP'), ('Deft de atenção'), ('ValenteXX'), ('Nightblu3'),
    ('Decade'), ('Andrews'), ('Dyasz'), ('Kodex'), ('tiger?¿'),
    ('Borapae'), ('Buda')
),
inserted_players as (
  insert into public.players (championship_id, name, initial_mmr, final_mmr)
  select championship.id, player_names.name, 833, 833
  from player_names, championship
  on conflict (championship_id, name) do nothing
  returning id
),
matches_data (match_number, winner_side, played_at) as (
  values
    (1, 'red', '2026-09-04 22:21:00-04'::timestamptz),   -- 437030dc
    (2, 'blue', '2026-09-04 23:22:00-04'::timestamptz),  -- 1e4c5ca2
    (3, 'blue', '2026-09-05 00:20:00-04'::timestamptz),  -- 0d9fabc0
    (4, 'red', '2026-09-05 01:12:00-04'::timestamptz),   -- 0109d65c
    (5, 'red', '2026-09-05 01:59:00-04'::timestamptz),   -- 6e5abb03
    (6, 'blue', '2026-09-05 02:43:00-04'::timestamptz),  -- 411801c1
    (7, 'blue', '2026-09-05 17:47:00-04'::timestamptz),  -- c48bb06a
    (8, 'blue', '2026-09-05 18:41:00-04'::timestamptz),  -- 37879ff3
    (9, 'red', '2026-09-05 19:46:00-04'::timestamptz),   -- 6c4be6de
    (10, 'blue', '2026-09-05 23:10:00-04'::timestamptz), -- cb90cbaa
    (11, 'red', '2026-09-06 00:09:00-04'::timestamptz),  -- 875c2a68
    (12, 'blue', '2026-09-06 00:55:00-04'::timestamptz), -- 4e6cc706
    (13, 'blue', '2026-09-06 01:46:00-04'::timestamptz), -- f10787df
    (14, 'red', '2026-09-06 02:47:00-04'::timestamptz),  -- 493201c4
    (15, 'red', '2026-09-06 03:33:00-04'::timestamptz),  -- 016b942f
    (16, 'blue', '2026-09-06 04:24:00-04'::timestamptz)  -- d314c82b
),
upserted_matches as (
  insert into public.matches (championship_id, match_number, winner_side, played_at)
  select championship.id, matches_data.match_number, matches_data.winner_side, matches_data.played_at
  from matches_data, championship
  on conflict (championship_id, match_number) do update set
    winner_side = excluded.winner_side,
    played_at = excluded.played_at
  returning id, match_number
),
cleaned_match_players as (
  delete from public.match_players
  where match_id in (select id from upserted_matches)
),
match_players_data (match_number, player_name, side, role, lp_delta) as (
  values
    -- match 1 = game 437030dc (red wins)
    (1, 'deuzao, o proibido', 'red', 'TOP', 240),
    (1, 'Thiaguin7x', 'red', 'JNG', 240),
    (1, 'Dyasz', 'red', 'MID', 240),
    (1, 'Deft de atenção', 'red', 'ADC', 240),
    (1, 'Borapae', 'red', 'SUP', 240),
    (1, 'Kodex', 'blue', 'TOP', -153),
    (1, 'JP', 'blue', 'JNG', -153),
    (1, 'Jouuzera', 'blue', 'MID', -153),
    (1, 'Bughi', 'blue', 'ADC', -153),
    (1, 'Argemon', 'blue', 'SUP', -153),
    -- match 2 = game 1e4c5ca2 (blue wins)
    (2, 'Kodex', 'blue', 'TOP', 242),
    (2, 'Thiaguin7x', 'blue', 'JNG', 242),
    (2, 'Dyasz', 'blue', 'MID', 242),
    (2, 'Deft de atenção', 'blue', 'ADC', 242),
    (2, 'Argemon', 'blue', 'SUP', 242),
    (2, 'kauzadOr', 'red', 'TOP', -164),
    (2, 'Ficc', 'red', 'JNG', -164),
    (2, 'deuzao, o proibido', 'red', 'MID', -157),
    (2, 'Decade', 'red', 'ADC', -164),
    (2, 'Borapae', 'red', 'SUP', -157),
    -- match 3 = game 0d9fabc0 (blue wins)
    (3, 'deuzao, o proibido', 'blue', 'TOP', 211),
    (3, 'Thiaguin7x', 'blue', 'JNG', 211),
    (3, 'Bughi', 'blue', 'MID', 224),
    (3, 'Gabão', 'blue', 'ADC', 237),
    (3, 'Mupthyy', 'blue', 'SUP', 237),
    (3, 'Kodex', 'red', 'TOP', -134),
    (3, 'JP', 'red', 'JNG', -140),
    (3, 'Jouuzera', 'red', 'MID', -140),
    (3, 'Deft de atenção', 'red', 'ADC', -134),
    (3, 'Argemon', 'red', 'SUP', -134),
    -- match 4 = game 0109d65c (red wins)
    (4, 'kauzadOr', 'red', 'TOP', 228),
    (4, 'Ficc', 'red', 'JNG', 228),
    (4, 'deuzao, o proibido', 'red', 'MID', 206),
    (4, 'Gabão', 'red', 'ADC', 229),
    (4, 'Mupthyy', 'red', 'SUP', 229),
    (4, 'tubinha1', 'blue', 'TOP', -151),
    (4, 'Thiaguin7x', 'blue', 'JNG', -132),
    (4, 'Jouuzera', 'blue', 'MID', -138),
    (4, 'Bughi', 'blue', 'ADC', -138),
    (4, 'Argemon', 'blue', 'SUP', -132),
    -- match 5 = game 6e5abb03 (red wins)
    (5, 'kauzadOr', 'red', 'TOP', 235),
    (5, 'Ficc', 'red', 'JNG', 235),
    (5, 'Jouuzera', 'red', 'MID', 223),
    (5, 'Deft de atenção', 'red', 'ADC', 223),
    (5, 'Mupthyy', 'red', 'SUP', 235),
    (5, 'Bughi', 'blue', 'TOP', -145),
    (5, 'JP', 'blue', 'JNG', -152),
    (5, 'deuzao, o proibido', 'blue', 'MID', -140),
    (5, 'Gabão', 'blue', 'ADC', -151),
    (5, 'shioNNN', 'blue', 'SUP', -166),
    -- match 6 = game 411801c1 (blue wins)
    (6, 'kauzadOr', 'blue', 'TOP', 220),
    (6, 'Ficc', 'blue', 'JNG', 220),
    (6, 'Jouuzera', 'blue', 'MID', 210),
    (6, 'Bughi', 'blue', 'ADC', 210),
    (6, 'Mupthyy', 'blue', 'SUP', 220),
    (6, 'JP', 'red', 'TOP', -142),
    (6, 'Thiaguin7x', 'red', 'JNG', -136),
    (6, 'deuzao, o proibido', 'red', 'MID', -131),
    (6, 'Deft de atenção', 'red', 'ADC', -136),
    (6, 'shioNNN', 'red', 'SUP', -154),
    -- match 7 = game c48bb06a (blue wins)
    (7, 'tubinha1', 'blue', 'TOP', 235),
    (7, 'Argemon', 'blue', 'JNG', 200),
    (7, 'Dyasz', 'blue', 'MID', 222),
    (7, 'Jouuzera', 'blue', 'ADC', 188),
    (7, 'Nightblu3', 'blue', 'SUP', 250),
    (7, 'Kodex', 'red', 'TOP', -135),
    (7, 'JP', 'red', 'JNG', -128),
    (7, 'Andrews', 'red', 'MID', -153),
    (7, 'Deft de atenção', 'red', 'ADC', -123),
    (7, 'Thiaguin7x', 'red', 'SUP', -124),
    -- match 8 = game 37879ff3 (blue wins)
    (8, 'tubinha1', 'blue', 'TOP', 237),
    (8, 'Ficc', 'blue', 'JNG', 211),
    (8, 'Dyasz', 'blue', 'MID', 225),
    (8, 'Bughi', 'blue', 'ADC', 202),
    (8, 'JP', 'blue', 'SUP', 202),
    (8, 'Nightblu3', 'red', 'TOP', -157),
    (8, 'Argemon', 'red', 'JNG', -133),
    (8, 'Andrews', 'red', 'MID', -157),
    (8, 'Jouuzera', 'red', 'ADC', -127),
    (8, 'Thiaguin7x', 'red', 'SUP', -127),
    -- match 9 = game 6c4be6de (red wins)
    (9, 'Kodex', 'red', 'TOP', 210),
    (9, 'Ficc', 'red', 'JNG', 196),
    (9, 'Jouuzera', 'red', 'MID', 179),
    (9, 'Bughi', 'red', 'ADC', 187),
    (9, 'Deft de atenção', 'red', 'SUP', 188),
    (9, 'tubinha1', 'blue', 'TOP', -137),
    (9, 'JP', 'blue', 'JNG', -122),
    (9, 'Dyasz', 'blue', 'MID', -132),
    (9, 'Decade', 'blue', 'ADC', -150),
    (9, 'Thiaguin7x', 'blue', 'SUP', -117),
    -- match 10 = game cb90cbaa (blue wins)
    (10, 'Kodex', 'blue', 'TOP', 205),
    (10, 'Buda', 'blue', 'JNG', 273),
    (10, 'Bughi', 'blue', 'MID', 186),
    (10, 'Deft de atenção', 'blue', 'ADC', 186),
    (10, 'ValenteXX', 'blue', 'SUP', 273),
    (10, 'Nightblu3', 'red', 'TOP', -152),
    (10, 'Argemon', 'red', 'JNG', -130),
    (10, 'Jouuzera', 'red', 'MID', -120),
    (10, 'Ficc', 'red', 'ADC', -128),
    (10, 'Borapae', 'red', 'SUP', -153),
    -- match 11 = game 875c2a68 (red wins)
    (11, 'Kodex', 'red', 'TOP', 191),
    (11, 'Ficc', 'red', 'JNG', 179),
    (11, 'Bughi', 'red', 'MID', 173),
    (11, 'Decade', 'red', 'ADC', 234),
    (11, 'ValenteXX', 'red', 'SUP', 248),
    (11, 'kauzadOr', 'blue', 'TOP', -134),
    (11, 'Buda', 'blue', 'JNG', -153),
    (11, 'Jouuzera', 'blue', 'MID', -111),
    (11, 'Deft de atenção', 'blue', 'ADC', -115),
    (11, 'Borapae', 'blue', 'SUP', -141),
    -- match 12 = game 4e6cc706 (blue wins)
    (12, 'Nightblu3', 'blue', 'TOP', 230),
    (12, 'Ficc', 'blue', 'JNG', 179),
    (12, 'Bughi', 'blue', 'MID', 172),
    (12, 'Decade', 'blue', 'ADC', 230),
    (12, 'Jouuzera', 'blue', 'SUP', 165),
    (12, 'Kodex', 'red', 'TOP', -124),
    (12, 'Argemon', 'red', 'JNG', -124),
    (12, 'deuzao, o proibido', 'red', 'MID', -129),
    (12, 'Deft de atenção', 'red', 'ADC', -115),
    (12, 'ValenteXX', 'red', 'SUP', -150),
    -- match 13 = game f10787df (blue wins)
    (13, 'Kodex', 'blue', 'TOP', 187),
    (13, 'Thiaguin7x', 'blue', 'JNG', 180),
    (13, 'deuzao, o proibido', 'blue', 'MID', 187),
    (13, 'Jouuzera', 'blue', 'ADC', 157),
    (13, 'ValenteXX', 'blue', 'SUP', 222),
    (13, 'Nightblu3', 'red', 'TOP', -134),
    (13, 'JP', 'red', 'JNG', -126),
    (13, 'Bughi', 'red', 'MID', -109),
    (13, 'Deft de atenção', 'red', 'ADC', -109),
    (13, 'Argemon', 'red', 'SUP', -122),
    -- match 14 = game 493201c4 (red wins)
    (14, 'Nightblu3', 'red', 'TOP', 215),
    (14, 'Thiaguin7x', 'red', 'JNG', 180),
    (14, 'Bughi', 'red', 'MID', 164),
    (14, 'Jouuzera', 'red', 'ADC', 158),
    (14, 'Deft de atenção', 'red', 'SUP', 164),
    (14, 'kauzadOr', 'blue', 'TOP', -133),
    (14, 'tiger?¿', 'blue', 'JNG', -166),
    (14, 'deuzao, o proibido', 'blue', 'MID', -123),
    (14, 'Decade', 'blue', 'ADC', -137),
    (14, 'ValenteXX', 'blue', 'SUP', -142),
    -- match 15 = game 016b942f (red wins)
    (15, 'JP', 'red', 'TOP', 169),
    (15, 'Thiaguin7x', 'red', 'JNG', 155),
    (15, 'Bughi', 'red', 'MID', 141),
    (15, 'Decade', 'red', 'ADC', 192),
    (15, 'ValenteXX', 'red', 'SUP', 190),
    (15, 'Nightblu3', 'blue', 'TOP', -112),
    (15, 'Deft de atenção', 'blue', 'JNG', -92),
    (15, 'deuzao, o proibido', 'blue', 'MID', -102),
    (15, 'Jouuzera', 'blue', 'ADC', -90),
    (15, 'Argemon', 'blue', 'SUP', -102),
    -- match 16 = game d314c82b (blue wins)
    (16, 'JP', 'blue', 'TOP', 191),
    (16, 'Thiaguin7x', 'blue', 'JNG', 177),
    (16, 'deuzao, o proibido', 'blue', 'MID', 183),
    (16, 'Deft de atenção', 'blue', 'ADC', 162),
    (16, 'ValenteXX', 'blue', 'SUP', 214),
    (16, 'Nightblu3', 'red', 'TOP', -133),
    (16, 'Argemon', 'red', 'JNG', -123),
    (16, 'Bughi', 'red', 'MID', -110),
    (16, 'Decade', 'red', 'ADC', -139),
    (16, 'Jouuzera', 'red', 'SUP', -107)
)
insert into public.match_players (match_id, player_id, side, role, lp_delta)
select um.id, p.id, mpd.side, mpd.role, mpd.lp_delta
from match_players_data mpd
inner join upserted_matches um on um.match_number = mpd.match_number
inner join championship c on true
inner join public.players p on p.name = mpd.player_name and p.championship_id = c.id;

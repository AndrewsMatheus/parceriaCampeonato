with championship as (
  select id from public.championships where slug = 'parceria-vive-2026-2'
)
delete from public.match_players mp
using public.matches m, championship c
where mp.match_id = m.id
  and m.championship_id = c.id;

with championship as (
  select id from public.championships where slug = 'parceria-vive-2026-2'
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
select m.id, p.id, mpd.side, mpd.role, mpd.lp_delta
from match_players_data mpd
inner join championship c on true
inner join public.matches m on m.championship_id = c.id and m.match_number = mpd.match_number
inner join public.players p on p.championship_id = c.id and p.name = mpd.player_name;

with championship as (
  select id from public.championships where slug = 'parceria-vive-2026-2'
),
stats_data (match_number, player_name, kills, deaths, assists, creep_score, gold_earned) as (
  values
-- match 1 = game 437030dc
    (1, 'deuzao, o proibido', 8, 5, 9, 199, 13488),
    (1, 'Thiaguin7x', 7, 6, 17, 161, 13422),
    (1, 'Dyasz', 12, 4, 12, 229, 13931),
    (1, 'Deft de atenção', 8, 3, 17, 280, 16475),
    (1, 'Borapae', 2, 6, 18, 33, 9255),
    (1, 'Kodex', 7, 6, 4, 215, 12690),
    (1, 'JP', 2, 6, 9, 221, 11322),
    (1, 'Jouuzera', 4, 7, 8, 236, 12114),
    (1, 'Bughi', 11, 10, 3, 229, 13744),
    (1, 'Argemon', 0, 8, 15, 30, 8234),
    -- match 2 = game 1e4c5ca2 (Kodex/Thiaguin7x split between the two "Digitador" rows is unconfirmed)
    (2, 'Ficc', 7, 6, 1, 217, 13447),
    (2, 'kauzadOr', 1, 9, 3, 201, 9872),
    (2, 'deuzao, o proibido', 3, 6, 6, 266, 12533),
    (2, 'Decade', 7, 3, 4, 278, 14811),
    (2, 'Borapae', 3, 4, 10, 33, 9347),
    (2, 'Kodex', 5, 5, 7, 204, 12637),
    (2, 'Thiaguin7x', 4, 5, 11, 188, 12612),
    (2, 'Dyasz', 13, 2, 9, 255, 16868),
    (2, 'Deft de atenção', 5, 3, 9, 294, 16396),
    (2, 'Argemon', 1, 6, 18, 42, 10125),
    -- match 3 = game 0d9fabc0
    (3, 'Bughi', 14, 3, 10, 272, 16713),
    (3, 'deuzao, o proibido', 8, 3, 10, 224, 14238),
    (3, 'Thiaguin7x', 10, 5, 15, 176, 14927),
    (3, 'Gabão', 4, 4, 9, 239, 12714),
    (3, 'Mupthyy', 3, 3, 25, 51, 11378),
    (3, 'Kodex', 6, 12, 2, 231, 12168),
    (3, 'JP', 2, 8, 3, 184, 10310),
    (3, 'Jouuzera', 1, 8, 3, 226, 11028),
    (3, 'Deft de atenção', 4, 4, 2, 316, 15221),
    (3, 'Argemon', 3, 7, 7, 43, 9075),
    -- match 4 = game 0109d65c
    (4, 'Ficc', 7, 0, 14, 223, 14448),
    (4, 'kauzadOr', 1, 5, 1, 217, 10163),
    (4, 'deuzao, o proibido', 14, 3, 10, 224, 15076),
    (4, 'Gabão', 4, 3, 18, 230, 13362),
    (4, 'Mupthyy', 5, 4, 18, 58, 11922),
    (4, 'tubinha1', 5, 4, 2, 201, 10632),
    (4, 'Thiaguin7x', 2, 6, 6, 147, 9543),
    (4, 'Jouuzera', 2, 9, 2, 234, 10267),
    (4, 'Bughi', 4, 6, 4, 239, 12786),
    (4, 'Argemon', 2, 6, 5, 31, 8075),
    -- match 5 = game 6e5abb03
    (5, 'Bughi', 4, 7, 4, 182, 8650),
    (5, 'JP', 3, 11, 8, 132, 8279),
    (5, 'deuzao, o proibido', 9, 9, 7, 136, 11381),
    (5, 'Gabão', 8, 11, 7, 161, 11942),
    (5, 'shioNNN', 2, 12, 13, 42, 7404),
    (5, 'kauzadOr', 9, 2, 10, 174, 12351),
    (5, 'Ficc', 9, 6, 21, 190, 13039),
    (5, 'Jouuzera', 12, 3, 19, 173, 12705),
    (5, 'Deft de atenção', 20, 7, 15, 180, 17795),
    (5, 'Mupthyy', 0, 8, 35, 24, 8924),
    -- match 6 = game 411801c1
    (6, 'Bughi', 17, 3, 10, 228, 16927),
    (6, 'kauzadOr', 4, 3, 1, 169, 10340),
    (6, 'Ficc', 6, 0, 6, 176, 10937),
    (6, 'Jouuzera', 3, 1, 6, 195, 10042),
    (6, 'Mupthyy', 3, 4, 15, 37, 9035),
    (6, 'JP', 4, 4, 1, 161, 8270),
    (6, 'Thiaguin7x', 2, 6, 3, 122, 7843),
    (6, 'deuzao, o proibido', 3, 7, 2, 144, 8704),
    (6, 'Deft de atenção', 2, 8, 2, 196, 8755),
    (6, 'shioNNN', 0, 8, 3, 21, 5364),
    -- match 7 = game c48bb06a (Kodex/Thiaguin7x split between the two "Digitador" rows is unconfirmed)
    (7, 'Andrews', 3, 4, 4, 246, 11563),
    (7, 'Kodex', 6, 10, 2, 246, 13347),
    (7, 'JP', 2, 7, 6, 175, 10448),
    (7, 'Deft de atenção', 5, 5, 5, 262, 15833),
    (7, 'Thiaguin7x', 1, 8, 11, 27, 8373),
    (7, 'tubinha1', 11, 2, 4, 263, 15388),
    (7, 'Argemon', 2, 1, 19, 229, 14017),
    (7, 'Dyasz', 4, 4, 14, 219, 12028),
    (7, 'Jouuzera', 17, 6, 7, 248, 17985),
    (7, 'Nightblu3', 0, 4, 21, 28, 9207),
    -- match 8 = game 37879ff3
    (8, 'tubinha1', 8, 2, 3, 159, 9625),
    (8, 'Ficc', 8, 2, 12, 170, 10830),
    (8, 'Dyasz', 8, 0, 17, 188, 10995),
    (8, 'Bughi', 13, 3, 10, 167, 13671),
    (8, 'JP', 1, 4, 23, 18, 7117),
    (8, 'Nightblu3', 0, 8, 2, 136, 6713),
    (8, 'Argemon', 1, 7, 5, 160, 8362),
    (8, 'Andrews', 2, 6, 6, 175, 8022),
    (8, 'Jouuzera', 8, 9, 2, 159, 12584),
    (8, 'Thiaguin7x', 0, 8, 9, 28, 5535),
    -- match 9 = game 6c4be6de
    (9, 'Kodex', 6, 3, 16, 223, 13667),
    (9, 'Ficc', 4, 6, 7, 237, 12849),
    (9, 'Jouuzera', 6, 7, 7, 218, 12768),
    (9, 'Bughi', 14, 2, 8, 293, 19324),
    (9, 'Deft de atenção', 2, 3, 23, 37, 10302),
    (9, 'tubinha1', 7, 10, 3, 211, 12804),
    (9, 'JP', 4, 3, 12, 190, 12179),
    (9, 'Dyasz', 4, 7, 7, 209, 11367),
    (9, 'Decade', 4, 4, 7, 274, 14375),
    (9, 'Thiaguin7x', 2, 8, 12, 29, 8515),
    -- match 10 = game cb90cbaa
    (10, 'Ficc', 3, 5, 4, 239, 11327),
    (10, 'Nightblu3', 0, 9, 2, 144, 7314),
    (10, 'Argemon', 3, 1, 3, 199, 11227),
    (10, 'Jouuzera', 5, 11, 1, 189, 10399),
    (10, 'Borapae', 2, 6, 4, 38, 8350),
    (10, 'Kodex', 8, 3, 8, 211, 13056),
    (10, 'Buda', 7, 2, 13, 162, 12423),
    (10, 'Bughi', 15, 2, 9, 268, 16047),
    (10, 'Deft de atenção', 2, 4, 6, 221, 11410),
    (10, 'ValenteXX', 0, 2, 12, 38, 7339),
    -- match 16 = game d314c82b
    (16, 'Bughi', 11, 10, 11, 211, 14498),
    (16, 'Nightblu3', 4, 13, 3, 294, 14362),
    (16, 'Argemon', 2, 6, 8, 222, 12109),
    (16, 'Decade', 9, 7, 12, 236, 16085),
    (16, 'Jouuzera', 3, 9, 18, 18, 9809),
    (16, 'JP', 10, 4, 6, 239, 16432),
    (16, 'Thiaguin7x', 5, 7, 16, 146, 12633),
    (16, 'deuzao, o proibido', 9, 7, 10, 196, 13550),
    (16, 'Deft de atenção', 19, 4, 7, 291, 22914),
    (16, 'ValenteXX', 2, 9, 20, 22, 10408),
    -- match 15 = game 016b942f
    (15, 'Bughi', 8, 1, 15, 206, 12146),
    (15, 'JP', 3, 4, 14, 118, 9200),
    (15, 'Thiaguin7x', 6, 3, 18, 148, 11809),
    (15, 'Decade', 18, 1, 10, 247, 16861),
    (15, 'ValenteXX', 2, 5, 20, 34, 8263),
    (15, 'Nightblu3', 5, 7, 0, 196, 10994),
    (15, 'Deft de atenção', 0, 10, 1, 166, 8307),
    (15, 'deuzao, o proibido', 3, 4, 0, 176, 9304),
    (15, 'Jouuzera', 2, 8, 4, 194, 10023),
    (15, 'Argemon', 4, 8, 4, 41, 7775),
    -- match 14 = game 493201c4
    (14, 'Bughi', 13, 4, 16, 189, 13616),
    (14, 'Nightblu3', 2, 3, 17, 215, 12091),
    (14, 'Thiaguin7x', 11, 5, 17, 168, 14376),
    (14, 'Jouuzera', 15, 3, 17, 241, 17247),
    (14, 'Deft de atenção', 0, 3, 29, 29, 8888),
    (14, 'kauzadOr', 2, 7, 5, 182, 10555),
    (14, 'tiger?¿', 6, 9, 6, 145, 11011),
    (14, 'deuzao, o proibido', 3, 9, 7, 173, 10570),
    (14, 'Decade', 6, 7, 4, 248, 13003),
    (14, 'ValenteXX', 1, 10, 9, 16, 7133),
    -- match 11 = game 875c2a68 (Kodex/Ficc split between the two "Digitador" rows is unconfirmed)
    (11, 'Bughi', 4, 5, 5, 260, 12955),
    (11, 'Kodex', 5, 6, 9, 187, 10518),
    (11, 'Ficc', 7, 3, 16, 193, 13110),
    (11, 'Decade', 13, 2, 7, 239, 15423),
    (11, 'ValenteXX', 1, 2, 16, 26, 7890),
    (11, 'kauzadOr', 4, 3, 3, 215, 11513),
    (11, 'Buda', 4, 5, 7, 187, 11465),
    (11, 'Jouuzera', 7, 6, 4, 229, 12094),
    (11, 'Deft de atenção', 2, 8, 4, 223, 11582),
    (11, 'Borapae', 1, 8, 5, 38, 7057),
    -- match 12 = game 4e6cc706
    (12, 'Bughi', 11, 3, 7, 213, 12362),
    (12, 'Nightblu3', 2, 1, 8, 182, 11037),
    (12, 'Ficc', 6, 2, 15, 179, 11592),
    (12, 'Decade', 8, 0, 6, 201, 12223),
    (12, 'Jouuzera', 2, 3, 14, 22, 7618),
    (12, 'Kodex', 3, 9, 0, 173, 8682),
    (12, 'Argemon', 1, 7, 4, 146, 8618),
    (12, 'deuzao, o proibido', 4, 5, 2, 147, 8601),
    (12, 'Deft de atenção', 0, 3, 4, 240, 9354),
    (12, 'ValenteXX', 1, 5, 3, 28, 6011),
    -- match 13 = game f10787df (Kodex/Thiaguin7x split between the two "Digitador" rows is unconfirmed)
    (13, 'Bughi', 14, 10, 16, 256, 17456),
    (13, 'Nightblu3', 4, 8, 13, 223, 14080),
    (13, 'JP', 10, 12, 20, 216, 17317),
    (13, 'Deft de atenção', 14, 7, 14, 326, 21959),
    (13, 'Argemon', 1, 11, 28, 29, 12049),
    (13, 'Kodex', 6, 10, 11, 290, 15911),
    (13, 'Thiaguin7x', 14, 9, 12, 214, 17816),
    (13, 'deuzao, o proibido', 14, 5, 15, 251, 18586),
    (13, 'Jouuzera', 12, 11, 11, 325, 20858),
    (13, 'ValenteXX', 2, 8, 28, 30, 12051)
)
update public.match_players mp
set
  kills = sd.kills,
  deaths = sd.deaths,
  assists = sd.assists,
  creep_score = sd.creep_score,
  gold_earned = sd.gold_earned,
  kill_participation = case
    when mp.side = 'blue' and m.blue_kills is not null and m.blue_kills > 0 then round(((sd.kills + sd.assists)::numeric / m.blue_kills) * 100, 2)
    when mp.side = 'red' and m.red_kills is not null and m.red_kills > 0 then round(((sd.kills + sd.assists)::numeric / m.red_kills) * 100, 2)
    else null
  end
from stats_data sd
inner join public.matches m on m.match_number = sd.match_number
inner join championship c on c.id = m.championship_id
inner join public.players p on p.name = sd.player_name and p.championship_id = c.id
where mp.match_id = m.id
  and mp.player_id = p.id;

with championship as (
  select id from public.championships where slug = 'parceria-vive-2026-2'
),
level_data (match_number, player_name, level) as (
  values
(1, 'deuzao, o proibido', 18), (1, 'Thiaguin7x', 15), (1, 'Dyasz', 17), (1, 'Deft de atenção', 16), (1, 'Borapae', 14),
    (1, 'Kodex', 17), (1, 'JP', 15), (1, 'Jouuzera', 15), (1, 'Bughi', 14), (1, 'Argemon', 12),
    (3, 'Bughi', 17), (3, 'deuzao, o proibido', 19), (3, 'Thiaguin7x', 18), (3, 'Gabão', 16), (3, 'Mupthyy', 15),
    (3, 'Kodex', 17), (3, 'JP', 15), (3, 'Jouuzera', 16), (3, 'Deft de atenção', 16), (3, 'Argemon', 13),
    (4, 'Ficc', 17), (4, 'kauzadOr', 17), (4, 'deuzao, o proibido', 17), (4, 'Gabão', 15), (4, 'Mupthyy', 14),
    (4, 'tubinha1', 17), (4, 'Thiaguin7x', 14), (4, 'Jouuzera', 15), (4, 'Bughi', 13), (4, 'Argemon', 13),
    (5, 'Bughi', 15), (5, 'JP', 12), (5, 'deuzao, o proibido', 13), (5, 'Gabão', 12), (5, 'shioNNN', 11),
    (5, 'kauzadOr', 17), (5, 'Ficc', 16), (5, 'Jouuzera', 15), (5, 'Deft de atenção', 15), (5, 'Mupthyy', 13),
    (6, 'Bughi', 15), (6, 'kauzadOr', 16), (6, 'Ficc', 15), (6, 'Jouuzera', 15), (6, 'Mupthyy', 12),
    (6, 'JP', 14), (6, 'Thiaguin7x', 12), (6, 'deuzao, o proibido', 13), (6, 'Deft de atenção', 12), (6, 'shioNNN', 10),
    (8, 'Ficc', 14), (8, 'tubinha1', 15), (8, 'Dyasz', 14), (8, 'Bughi', 13), (8, 'JP', 11),
    (8, 'Nightblu3', 13), (8, 'Argemon', 13), (8, 'Andrews', 13), (8, 'Jouuzera', 12), (8, 'Thiaguin7x', 10),
    (9, 'Kodex', 17), (9, 'Ficc', 19), (9, 'Jouuzera', 16), (9, 'Bughi', 16), (9, 'Deft de atenção', 14),
    (9, 'tubinha1', 16), (9, 'JP', 16), (9, 'Dyasz', 16), (9, 'Decade', 16), (9, 'Thiaguin7x', 12),
    (10, 'Kodex', 17), (10, 'Buda', 16), (10, 'Bughi', 17), (10, 'Deft de atenção', 14), (10, 'ValenteXX', 13),
    (10, 'Nightblu3', 15), (10, 'Argemon', 14), (10, 'Jouuzera', 14), (10, 'Ficc', 14), (10, 'Borapae', 12),
    (11, 'Kodex', 16), (11, 'Ficc', 15), (11, 'Bughi', 16), (11, 'Decade', 15), (11, 'ValenteXX', 13),
    (11, 'kauzadOr', 17), (11, 'Buda', 15), (11, 'Jouuzera', 16), (11, 'Deft de atenção', 13), (11, 'Borapae', 12),
    (12, 'Bughi', 16), (12, 'Nightblu3', 16), (12, 'Ficc', 14), (12, 'Decade', 14), (12, 'Jouuzera', 12),
    (12, 'Kodex', 14), (12, 'Argemon', 13), (12, 'deuzao, o proibido', 13), (12, 'Deft de atenção', 13), (12, 'ValenteXX', 10),
    (13, 'Bughi', 18), (13, 'Nightblu3', 20), (13, 'JP', 18), (13, 'Deft de atenção', 18), (13, 'Argemon', 16),
    (13, 'Kodex', 20), (13, 'Thiaguin7x', 18), (13, 'deuzao, o proibido', 18), (13, 'Jouuzera', 18), (13, 'ValenteXX', 16),
    (14, 'Bughi', 16), (14, 'Nightblu3', 18), (14, 'Thiaguin7x', 16), (14, 'Jouuzera', 16), (14, 'Deft de atenção', 15),
    (14, 'kauzadOr', 16), (14, 'tiger?¿', 14), (14, 'deuzao, o proibido', 15), (14, 'Decade', 14), (14, 'ValenteXX', 12),
    (15, 'Bughi', 16), (15, 'JP', 16), (15, 'Thiaguin7x', 15), (15, 'Decade', 15), (15, 'ValenteXX', 12),
    (15, 'Nightblu3', 16), (15, 'Deft de atenção', 13), (15, 'deuzao, o proibido', 14), (15, 'Jouuzera', 12), (15, 'Argemon', 11),
    (16, 'Bughi', 16), (16, 'Nightblu3', 19), (16, 'Argemon', 16), (16, 'Decade', 15), (16, 'Jouuzera', 13),
    (16, 'JP', 20), (16, 'Thiaguin7x', 17), (16, 'deuzao, o proibido', 16), (16, 'Deft de atenção', 17), (16, 'ValenteXX', 15)
)
update public.match_players mp
set level = ld.level
from level_data ld
inner join public.matches m on m.match_number = ld.match_number
inner join championship c on c.id = m.championship_id
inner join public.players p on p.name = ld.player_name and p.championship_id = c.id
where mp.match_id = m.id
  and mp.player_id = p.id;

with championship as (
  select id from public.championships where slug = 'parceria-vive-2026-2'
),
champion_data (match_number, player_name, champion_name) as (
  values
-- match 1 (from draft thFdKIzf)
    (1, 'Kodex', 'K''Sante'), (1, 'JP', 'Kayn'), (1, 'Jouuzera', 'Swain'), (1, 'Bughi', 'Mel'), (1, 'Argemon', 'Karma'),
    (1, 'deuzao, o proibido', 'Jinx'), (1, 'Thiaguin7x', 'Wukong'), (1, 'Dyasz', 'Soraka'), (1, 'Deft de atenção', 'Xin Zhao'), (1, 'Borapae', 'Ahri'),
    -- match 2 (from draft M7uX2D_z)
    (2, 'Kodex', 'Ambessa'), (2, 'Thiaguin7x', 'Kayn'), (2, 'Dyasz', 'Syndra'), (2, 'Deft de atenção', 'Lucian'), (2, 'Argemon', 'Braum'),
    (2, 'kauzadOr', 'Volibear'), (2, 'Ficc', 'Wukong'), (2, 'deuzao, o proibido', 'Hwei'), (2, 'Decade', 'Ezreal'), (2, 'Borapae', 'Thresh'),
    -- match 3 (from draft 0a7Vvqup)
    (3, 'deuzao, o proibido', 'Lillia'), (3, 'Thiaguin7x', 'Kayn'), (3, 'Bughi', 'Syndra'), (3, 'Gabão', 'Ashe'), (3, 'Mupthyy', 'Seraphine'),
    (3, 'Kodex', 'Renekton'), (3, 'JP', 'Master Yi'), (3, 'Jouuzera', 'Samira'), (3, 'Deft de atenção', 'Kai''Sa'), (3, 'Argemon', 'Nautilus'),
    -- match 4 (from draft ZKkaBOnT)
    (4, 'tubinha1', 'Mordekaiser'), (4, 'Thiaguin7x', 'Sejuani'), (4, 'Jouuzera', 'Lissandra'), (4, 'Bughi', 'Jinx'), (4, 'Argemon', 'Lulu'),
    (4, 'kauzadOr', 'Volibear'), (4, 'Ficc', 'Wukong'), (4, 'deuzao, o proibido', 'Sylas'), (4, 'Gabão', 'Ashe'), (4, 'Mupthyy', 'Senna'),
    -- match 6 (from draft mUVH9Qz9)
    (6, 'kauzadOr', 'Cho''Gath'), (6, 'Ficc', 'Wukong'), (6, 'Jouuzera', 'Yone'), (6, 'Bughi', 'Miss Fortune'), (6, 'Mupthyy', 'Zoe'),
    (6, 'JP', 'Vladimir'), (6, 'Thiaguin7x', 'Nocturne'), (6, 'deuzao, o proibido', 'Hwei'), (6, 'Deft de atenção', 'Jinx'), (6, 'shioNNN', 'Janna'),
    -- match 7 (from draft ACaf9DnC)
    (7, 'tubinha1', 'Urgot'), (7, 'Argemon', 'Rammus'), (7, 'Dyasz', 'Annie'), (7, 'Jouuzera', 'Smolder'), (7, 'Nightblu3', 'Braum'),
    (7, 'Kodex', 'Darius'), (7, 'JP', 'Trundle'), (7, 'Andrews', 'Ahri'), (7, 'Deft de atenção', 'Kai''Sa'), (7, 'Thiaguin7x', 'Nautilus'),
    -- match 8 (from draft nHYMLui5)
    (8, 'tubinha1', 'Tahm Kench'), (8, 'Ficc', 'Brand'), (8, 'Dyasz', 'Taliyah'), (8, 'Bughi', 'Caitlyn'), (8, 'JP', 'Braum'),
    (8, 'Nightblu3', 'Olaf'), (8, 'Argemon', 'Maokai'), (8, 'Andrews', 'Ahri'), (8, 'Jouuzera', 'Samira'), (8, 'Thiaguin7x', 'Nautilus'),
    -- match 9 (from draft D7WPQ0bU)
    (9, 'tubinha1', 'Kled'), (9, 'JP', 'Rammus'), (9, 'Dyasz', 'Yone'), (9, 'Decade', 'Ziggs'), (9, 'Thiaguin7x', 'Nami'),
    (9, 'Kodex', 'Renekton'), (9, 'Ficc', 'Kayn'), (9, 'Jouuzera', 'Swain'), (9, 'Bughi', 'Varus'), (9, 'Deft de atenção', 'Braum'),
    -- match 10 (from draft jY6OtnoF)
    (10, 'Kodex', 'Ambessa'), (10, 'Buda', 'Lee Sin'), (10, 'Bughi', 'Viktor'), (10, 'Deft de atenção', 'Tristana'), (10, 'ValenteXX', 'Leona'),
    (10, 'Nightblu3', 'Volibear'), (10, 'Argemon', 'Sejuani'), (10, 'Jouuzera', 'Vex'), (10, 'Ficc', 'Caitlyn'), (10, 'Borapae', 'Thresh'),
    -- match 11 (from draft RwxBUNU3)
    (11, 'kauzadOr', 'Sion'), (11, 'Buda', 'Xin Zhao'), (11, 'Jouuzera', 'Yone'), (11, 'Deft de atenção', 'Jinx'), (11, 'Borapae', 'Blitzcrank'),
    (11, 'Kodex', 'Mordekaiser'), (11, 'Ficc', 'Neeko'), (11, 'Bughi', 'Yasuo'), (11, 'Decade', 'Jhin'), (11, 'ValenteXX', 'Leona'),
    -- match 12 (from draft bP_8XdoQ)
    (12, 'Nightblu3', 'Dr. Mundo'), (12, 'Ficc', 'Brand'), (12, 'Bughi', 'Syndra'), (12, 'Decade', 'Kai''Sa'), (12, 'Jouuzera', 'Nautilus'),
    (12, 'Kodex', 'Mordekaiser'), (12, 'Argemon', 'Nocturne'), (12, 'deuzao, o proibido', 'Locke'), (12, 'Deft de atenção', 'Jinx'), (12, 'ValenteXX', 'Leona'),
    -- match 13 (from draft LzN8XYWh)
    (13, 'Kodex', 'Zaahen'), (13, 'Thiaguin7x', 'Kayn'), (13, 'deuzao, o proibido', 'Vex'), (13, 'Jouuzera', 'Jhin'), (13, 'ValenteXX', 'Leona'),
    (13, 'Nightblu3', 'Zac'), (13, 'JP', 'Amumu'), (13, 'Bughi', 'Lux'), (13, 'Deft de atenção', 'Lucian'), (13, 'Argemon', 'Milio'),
    -- match 14 (from draft MD4_71yv)
    (14, 'kauzadOr', 'Sion'), (14, 'tiger?¿', 'Lee Sin'), (14, 'deuzao, o proibido', 'Orianna'), (14, 'Decade', 'Jinx'), (14, 'ValenteXX', 'Lulu'),
    (14, 'Nightblu3', 'Zac'), (14, 'Thiaguin7x', 'Wukong'), (14, 'Bughi', 'Lissandra'), (14, 'Jouuzera', 'Smolder'), (14, 'Deft de atenção', 'Milio'),
    -- match 15 (from draft qcucp-PH)
    (15, 'Nightblu3', 'Gnar'), (15, 'Deft de atenção', 'Lee Sin'), (15, 'deuzao, o proibido', 'Zed'), (15, 'Jouuzera', 'Samira'), (15, 'Argemon', 'Rammus'),
    (15, 'JP', 'Malphite'), (15, 'Thiaguin7x', 'Wukong'), (15, 'Bughi', 'Taliyah'), (15, 'Decade', 'Jhin'), (15, 'ValenteXX', 'Leona'),
    -- match 16 (from draft Qf0OXYdD)
    (16, 'JP', 'Vladimir'), (16, 'Thiaguin7x', 'Lee Sin'), (16, 'deuzao, o proibido', 'Mel'), (16, 'Deft de atenção', 'Yunara'), (16, 'ValenteXX', 'Nautilus'),
    (16, 'Nightblu3', 'Irelia'), (16, 'Argemon', 'Shyvana'), (16, 'Bughi', 'Viktor'), (16, 'Decade', 'Kai''Sa'), (16, 'Jouuzera', 'Blitzcrank')
    -- match 5 (6e5abb03): draft had no role tags, champion-to-player mapping not confirmable
)
update public.match_players mp
set
  champion_name = cd.champion_name,
  champion_icon_url = 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/champion/' || cd.champion_name || '.png'
from champion_data cd
inner join public.matches m on m.match_number = cd.match_number
inner join championship c on c.id = m.championship_id
inner join public.players p on p.name = cd.player_name and p.championship_id = c.id
where mp.match_id = m.id
  and mp.player_id = p.id;

with championship as (
  select id from public.championships where slug = 'parceria-vive-2026-2'
),
item_data (match_number, player_name, items) as (
  values
(1, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4645.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3119.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3020.png']::text[]),
  (1, 'Kodex', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3082.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1120.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6665.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6662.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (1, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6699.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png']::text[]),
  (1, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2503.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3171.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3116.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3211.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6694.png']::text[]),
  (1, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6617.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3222.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3870.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3142.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2020.png']::text[]),
  (1, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3087.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4633.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2510.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3067.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (1, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3144.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (1, 'Dyasz', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6653.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6694.png']::text[]),
  (1, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3085.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3033.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3145.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (1, 'Borapae', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3222.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6617.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (3, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6698.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4630.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png']::text[]),
  (3, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6673.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3181.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3871.png']::text[]),
  (3, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3165.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6699.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3802.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3814.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1103.png']::text[]),
  (3, 'Gabão', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1043.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png']::text[]),
  (3, 'Mupthyy', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (3, 'Kodex', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1011.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3083.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3871.png']::text[]),
  (3, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3742.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1103.png']::text[]),
  (3, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6696.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png']::text[]),
  (3, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2019.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (3, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2525.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6675.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (4, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3035.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3168.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3147.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3008.png']::text[]),
  (4, 'tubinha1', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4633.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1120.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6657.png']::text[]),
  (4, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1029.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4632.png']::text[]),
  (4, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3171.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4645.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3003.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (4, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3222.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3870.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4642.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (4, 'kauzadOr', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1082.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1054.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (4, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2021.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3078.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3053.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (4, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3147.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6657.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3173.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3041.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3147.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (4, 'Gabão', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6672.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3085.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3174.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6662.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (4, 'Mupthyy', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3814.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2020.png']::text[]),
  (5, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1054.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6631.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3742.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1011.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (5, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6653.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3067.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (5, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1056.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3175.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3089.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6662.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (5, 'Gabão', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1038.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1083.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png']::text[]),
  (5, 'shioNNN', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3876.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3109.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1028.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (5, 'kauzadOr', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2502.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1028.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6657.png']::text[]),
  (5, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6653.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3020.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3116.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (5, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3171.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4630.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3003.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (5, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3032.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6675.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1038.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6662.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (5, 'Mupthyy', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3050.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2524.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (6, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3165.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4632.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1043.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3145.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3008.png']::text[]),
  (6, 'kauzadOr', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3152.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (6, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3144.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1103.png']::text[]),
  (6, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3801.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3140.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3802.png']::text[]),
  (6, 'Mupthyy', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3140.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (6, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3871.png']::text[]),
  (6, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1103.png']::text[]),
  (6, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png']::text[]),
  (6, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3168.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (6, 'shioNNN', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3165.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3742.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3181.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png']::text[]),
  (8, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3032.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3600.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3035.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (8, 'tubinha1', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3302.png']::text[]),
  (8, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6617.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3020.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3116.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (8, 'Dyasz', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3184.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4632.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3116.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3171.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2503.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3135.png']::text[]),
  (8, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3067.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1006.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png']::text[]),
  (8, 'Nightblu3', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1042.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4005.png']::text[]),
  (8, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4629.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6653.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (8, 'Andrews', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3074.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1056.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3135.png']::text[]),
  (8, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3144.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3600.png']::text[]),
  (8, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1029.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png']::text[]),
  (9, 'Kodex', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3087.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3139.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3302.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6665.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2051.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3008.png']::text[]),
  (9, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6692.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3161.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2021.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (9, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3143.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1054.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (9, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6653.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3168.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3116.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (9, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3876.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3222.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3109.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (9, 'tubinha1', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3053.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (9, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3143.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6664.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1011.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png']::text[]),
  (9, 'Dyasz', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1038.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3801.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3814.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (9, 'Decade', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1056.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1058.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3091.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3020.png']::text[]),
  (9, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4642.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3870.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1052.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6617.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (10, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2503.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3171.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png']::text[]),
  (10, 'Kodex', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6692.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6698.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (10, 'Buda', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6610.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2019.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png']::text[]),
  (10, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3174.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (10, 'ValenteXX', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3109.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (10, 'Nightblu3', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2502.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6696.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3742.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (10, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2525.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3211.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4629.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png']::text[]),
  (10, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3171.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3871.png']::text[]),
  (10, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (10, 'Borapae', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3222.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2019.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (12, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3814.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png']::text[]),
  (12, 'Nightblu3', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3145.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3181.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (12, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3116.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3877.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1103.png']::text[]),
  (12, 'Decade', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2003.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png']::text[]),
  (12, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1103.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (12, 'Kodex', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1052.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3116.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4632.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (12, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1103.png']::text[]),
  (12, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3119.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3100.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3165.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png']::text[]),
  (12, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3168.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png']::text[]),
  (12, 'ValenteXX', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2019.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (11, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3801.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6673.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png']::text[]),
  (11, 'Kodex', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4633.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (11, 'Ficc', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3152.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1052.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png']::text[]),
  (11, 'Decade', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1120.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3174.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3145.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6696.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png']::text[]),
  (11, 'ValenteXX', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (11, 'kauzadOr', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (11, 'Buda', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2019.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png']::text[]),
  (11, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3801.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6673.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3165.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png']::text[]),
  (11, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1083.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3748.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (11, 'Borapae', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3222.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1011.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (14, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3089.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2503.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3145.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2504.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (14, 'Nightblu3', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (14, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2019.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3144.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (14, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3161.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3094.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png']::text[]),
  (14, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3870.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6617.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3363.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1011.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (14, 'kauzadOr', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3084.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6664.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1011.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png']::text[]),
  (14, 'tiger?¿', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6692.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png']::text[]),
  (14, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1056.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1082.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3175.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2526.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (14, 'Decade', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1038.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3168.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (14, 'ValenteXX', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3147.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3165.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (13, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4646.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3135.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3024.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (13, 'Nightblu3', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1011.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6657.png']::text[]),
  (13, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3143.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6665.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/8020.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6617.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (13, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3508.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3139.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3033.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6675.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3008.png']::text[]),
  (13, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3222.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3870.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3158.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6620.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6617.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[]),
  (13, 'Kodex', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3123.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3078.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3024.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (13, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3814.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6695.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6692.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6699.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (13, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3089.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4646.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4630.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3024.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (13, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3142.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3094.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3107.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3145.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3003.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png']::text[]),
  (13, 'ValenteXX', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2524.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png']::text[]),
  (15, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4645.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2503.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6696.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3174.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3119.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (15, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3110.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3068.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1056.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6657.png']::text[]),
  (15, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2019.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3078.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (15, 'Decade', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1120.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3094.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6676.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3145.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3165.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png']::text[]),
  (15, 'ValenteXX', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png']::text[]),
  (15, 'Nightblu3', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1037.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2021.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3302.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3144.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (15, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6610.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6692.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4632.png']::text[]),
  (15, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6697.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6699.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3173.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1036.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (15, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6676.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3031.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3035.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3003.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png']::text[]),
  (15, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3047.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3075.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1028.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3364.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6690.png']::text[]),
  (16, 'Bughi', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3175.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2503.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3157.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3076.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3118.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (16, 'Nightblu3', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3742.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3340.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (16, 'Argemon', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3078.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6333.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (16, 'Decade', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1086.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3302.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6672.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3115.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2051.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (16, 'Jouuzera', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3009.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3109.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3071.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png']::text[]),
  (16, 'JP', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3089.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/4646.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2420.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3091.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6655.png']::text[]),
  (16, 'Thiaguin7x', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3026.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1053.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3072.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6660.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3916.png']::text[]),
  (16, 'deuzao, o proibido', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3089.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2503.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1058.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3133.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1018.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2139.png']::text[]),
  (16, 'Deft de atenção', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/6672.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3085.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3174.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2523.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3044.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/1001.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3153.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3006.png']::text[]),
  (16, 'ValenteXX', array['https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3869.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3111.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3190.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3065.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/3124.png', 'https://ddragon.leagueoflegends.com/cdn/16.17.1/img/item/2055.png']::text[])
)
update public.match_players mp
set items = item_data.items
from item_data
inner join public.matches m on m.match_number = item_data.match_number
inner join championship c on c.id = m.championship_id
inner join public.players p on p.name = item_data.player_name and p.championship_id = c.id
where mp.match_id = m.id
  and mp.player_id = p.id;

with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
match_meta (match_number, duration_seconds, blue_kills, red_kills) as (
  values
    (17, 914, 15, 4),
    (19, 1980, 30, 49),
    (20, 1501, 38, 13),
    (21, 2134, 36, 23),
    (22, 2151, 39, 18),
    (24, 1834, 27, 42)
)
update public.matches m
set
  duration_seconds = match_meta.duration_seconds,
  blue_kills = match_meta.blue_kills,
  red_kills = match_meta.red_kills
from match_meta
inner join championship c on true
where m.championship_id = c.id
  and m.match_number = match_meta.match_number;

with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
scoreboard_data (
  match_number,
  player_name,
  role,
  champion_name,
  level,
  kills,
  deaths,
  assists,
  creep_score,
  gold_earned,
  damage_dealt_champions
) as (
  values
    -- match 17 = game 1517aa69 screenshot, Discord game dac7b0d3
    (17, 'tubinha1', 'TOP', 'Yorick', 13, 3, 0, 0, null, 7181, 8929),
    (17, 'Ficc', 'JNG', 'Lee Sin', 10, 2, 1, 2, null, 5980, 3921),
    (17, 'Andrews', 'MID', 'Xerath', 11, 5, 1, 2, null, 6556, 10257),
    (17, 'Deft de atenção', 'ADC', 'Caitlyn', 10, 5, 1, 2, null, 7191, 9840),
    (17, 'Mupthyy', 'SUP', 'Janna', 8, 0, 1, 9, null, 4568, 4019),
    (17, 'JP', 'TOP', 'Darius', 11, 0, 3, 0, null, 4757, 3536),
    (17, 'Argemon', 'JNG', 'Xin Zhao', 9, 1, 3, 1, null, 5151, 4175),
    (17, 'Dyasz', 'MID', 'Viktor', 10, 2, 2, 2, null, 5086, 7571),
    (17, 'Bughi', 'ADC', 'Sivir', 9, 1, 2, 1, null, 5792, 3812),
    (17, 'ValenteXX', 'SUP', 'Sona', 7, 0, 5, 2, null, 3296, 1435),
    -- match 19 = game da3a4b81
    (19, 'tubinha1', 'TOP', 'Yorick', 19, 7, 5, 11, null, 14568, 31340),
    (19, 'Thiaguin7x', 'JNG', 'Amumu', 17, 9, 7, 25, null, 15021, 25144),
    (19, 'Jouuzera', 'MID', 'Lissandra', 17, 10, 6, 15, null, 14544, 28663),
    (19, 'Bughi', 'ADC', 'Miss Fortune', 17, 22, 4, 13, null, 23065, 51513),
    (19, 'ValenteXX', 'SUP', 'Nautilus', 15, 1, 8, 26, null, 10043, 11967),
    (19, 'kauzadOr', 'TOP', 'Volibear', 19, 2, 10, 7, null, 12563, 21746),
    (19, 'Argemon', 'JNG', 'Wukong', 16, 6, 10, 9, null, 13537, 10763),
    (19, 'Andrews', 'MID', 'Syndra', 18, 8, 10, 9, null, 13701, 31373),
    (19, 'Deft de atenção', 'ADC', 'Sivir', 16, 13, 9, 8, null, 18622, 42270),
    (19, 'Dyasz', 'SUP', 'Braum', 15, 1, 10, 19, null, 8638, 7648),
    -- match 20 = game 1517aa69
    (20, 'Kodex', 'TOP', 'Ambessa', 17, 9, 5, 7, null, 11814, 24932),
    (20, 'Buda', 'JNG', 'Lee Sin', 15, 9, 1, 14, null, 11860, 13880),
    (20, 'Jouuzera', 'MID', 'Swain', 15, 7, 2, 16, null, 11336, 21297),
    (20, 'Bughi', 'ADC', 'Tristana', 13, 10, 2, 12, null, 14284, 28202),
    (20, 'Thiaguin7x', 'SUP', 'Leona', 11, 3, 3, 20, null, 8660, 7769),
    (20, 'tiger?¿', 'TOP', 'Poppy', 15, 7, 7, 2, null, 10114, 14263),
    (20, 'JP', 'JNG', 'Wukong', 13, 2, 7, 1, null, 8239, 8199),
    (20, 'Dyasz', 'MID', 'Taliyah', 12, 1, 9, 5, null, 7006, 18167),
    (20, 'Deft de atenção', 'ADC', 'Yunara', 12, 0, 7, 4, null, 9189, 10463),
    (20, 'ValenteXX', 'SUP', 'Alistar', 10, 3, 8, 3, null, 7472, 4697),
    -- match 21 = game 22acb381
    (21, 'Buda', 'TOP', null, 18, 5, 2, 12, 244, 15105, null),
    (21, 'tubinha1', 'JNG', null, 20, 7, 4, 12, 214, 14683, null),
    (21, 'Dyasz', 'MID', null, 17, 6, 7, 12, 228, 13295, null),
    (21, 'Deft de atenção', 'ADC', null, 18, 15, 5, 10, 309, 21697, null),
    (21, 'Thiaguin7x', 'SUP', null, 16, 3, 5, 22, 30, 11269, null),
    (21, 'Kodex', 'TOP', null, 17, 2, 10, 5, 254, 12471, null),
    (21, 'Ficc', 'JNG', null, 16, 3, 7, 10, 218, 12645, null),
    (21, 'Jouuzera', 'MID', null, 17, 10, 9, 6, 238, 14313, null),
    (21, 'Bughi', 'ADC', null, 15, 8, 5, 5, 293, 18095, null),
    (21, 'Borapae', 'SUP', null, 15, 0, 5, 14, 43, 9296, null),
    -- match 22 = game fd4e7c3c
    (22, 'Buda', 'TOP', null, 18, 4, 3, 15, 235, 14313, null),
    (22, 'Kodex', 'JNG', null, 19, 7, 8, 5, 209, 13255, null),
    (22, 'deuzao, o proibido', 'MID', null, 18, 10, 1, 4, 316, 17323, null),
    (22, 'Deft de atenção', 'ADC', null, 18, 18, 2, 11, 309, 21614, null),
    (22, 'Thiaguin7x', 'SUP', null, 16, 0, 4, 29, 27, 10947, null),
    (22, 'Dyasz', 'TOP', null, 18, 8, 8, 6, 199, 14597, null),
    (22, 'JP', 'JNG', null, 17, 2, 10, 9, 187, 11491, null),
    (22, 'Ficc', 'MID', null, 16, 2, 8, 6, 248, 11424, null),
    (22, 'Jouuzera', 'ADC', null, 17, 6, 5, 3, 395, 19204, null),
    (22, 'Borapae', 'SUP', null, 16, 0, 8, 10, 25, 8193, null),
    -- match 24 = game 22239f91
    (24, 'Kodex', 'TOP', null, 18, 2, 7, 9, 190, 10842, null),
    (24, 'Ficc', 'JNG', null, 18, 15, 3, 10, 230, 17542, null),
    (24, 'Dyasz', 'MID', null, 17, 9, 9, 15, 151, 13047, null),
    (24, 'Bughi', 'ADC', null, 17, 15, 4, 6, 261, 19322, null),
    (24, 'JP', 'SUP', null, 14, 1, 4, 22, 24, 9594, null),
    (24, 'tubinha1', 'TOP', null, 16, 5, 6, 3, 178, 10430, null),
    (24, 'Buda', 'JNG', null, 15, 8, 9, 11, 161, 12034, null),
    (24, 'Jouuzera', 'MID', null, 15, 7, 12, 9, 201, 12793, null),
    (24, 'Deft de atenção', 'ADC', null, 15, 5, 10, 2, 238, 12994, null),
    (24, 'Thiaguin7x', 'SUP', null, 13, 2, 5, 12, 25, 8055, null)
)
update public.match_players mp
set
  role = scoreboard_data.role,
  champion_name = coalesce(scoreboard_data.champion_name, mp.champion_name),
  level = scoreboard_data.level,
  kills = scoreboard_data.kills,
  deaths = scoreboard_data.deaths,
  assists = scoreboard_data.assists,
  creep_score = coalesce(scoreboard_data.creep_score, mp.creep_score),
  gold_earned = scoreboard_data.gold_earned,
  damage_dealt_champions = coalesce(scoreboard_data.damage_dealt_champions, mp.damage_dealt_champions)
from scoreboard_data
inner join championship c on true
inner join public.matches m on m.championship_id = c.id and m.match_number = scoreboard_data.match_number
inner join public.players p on p.championship_id = c.id and p.name = scoreboard_data.player_name
where mp.match_id = m.id
  and mp.player_id = p.id;

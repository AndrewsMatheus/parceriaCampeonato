with target_championship as (
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
set champion_name = cd.champion_name
from champion_data cd
inner join public.matches m on m.match_number = cd.match_number
inner join target_championship c on m.championship_id = c.id
inner join public.players p on p.name = cd.player_name and p.championship_id = c.id
where mp.match_id = m.id and mp.player_id = p.id;

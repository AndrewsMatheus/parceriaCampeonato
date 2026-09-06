with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
real_leaderboard (name, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate) as (
  values
    ('Ficc', 1989, 1, 7, 2, 77),
    ('Bughi', 1836, 2, 9, 5, 64),
    ('Mupthyy', 1754, 3, 4, 0, 100),
    ('ValenteXX', 1688, 4, 5, 2, 71),
    ('Dyasz', 1632, 5, 4, 1, 80),
    ('Thiaguin7x', 1583, 6, 7, 5, 58),
    ('Deft de atenção', 1415, 7, 7, 7, 50),
    ('Kodex', 1322, 8, 5, 4, 55),
    ('Jouuzera', 1126, 9, 7, 8, 46),
    ('kauzadOr', 1085, 10, 3, 3, 50),
    ('deuzao, o proibido', 1078, 11, 5, 6, 45),
    ('tubinha1', 1017, 12, 2, 2, 50),
    ('Buda', 953, 13, 1, 1, 50),
    ('Decade', 899, 14, 3, 4, 42),
    ('Nightblu3', 840, 15, 3, 5, 37),
    ('tiger?¿', 666, 16, 0, 1, 0),
    ('Borapae', 624, 17, 1, 3, 25),
    ('Andrews', 522, 18, 0, 2, 0),
    ('shioNNN', 513, 19, 0, 2, 0),
    ('JP', 432, 20, 3, 7, 30)
)
update public.players p
set
  final_mmr = real_leaderboard.final_mmr,
  reported_rank = real_leaderboard.reported_rank,
  reported_wins = real_leaderboard.reported_wins,
  reported_losses = real_leaderboard.reported_losses,
  reported_winrate = real_leaderboard.reported_winrate
from real_leaderboard
inner join championship c on true
where p.championship_id = c.id
  and p.name = real_leaderboard.name;

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

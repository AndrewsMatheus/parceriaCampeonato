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
    coalesce(sum(mp.lp_delta), 0)::integer as lp_delta,
    count(*) filter (where mp.side = m.winner_side)::integer as wins,
    count(*) filter (where mp.side <> m.winner_side)::integer as losses
  from public.players p
  inner join championship c on c.id = p.championship_id
  inner join public.match_players mp on mp.player_id = p.id
  inner join public.matches m on m.id = mp.match_id and m.championship_id = c.id
  where m.match_number between 17 and 24
    and p.name in (select name from base_leaderboard)
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

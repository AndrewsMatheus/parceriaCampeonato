with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
),
player_totals as (
  select
    p.id as player_id,
    p.initial_mmr + coalesce(sum(mp.lp_delta), 0)::integer as final_mmr,
    count(*) filter (where mp.side = m.winner_side)::integer as wins,
    count(*) filter (where mp.side <> m.winner_side)::integer as losses
  from public.players p
  inner join championship c on c.id = p.championship_id
  left join public.match_players mp on mp.player_id = p.id
  left join public.matches m on m.id = mp.match_id and m.championship_id = c.id
  group by p.id, p.initial_mmr
),
ranked_players as (
  select
    player_id,
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
where p.id = ranked_players.player_id;

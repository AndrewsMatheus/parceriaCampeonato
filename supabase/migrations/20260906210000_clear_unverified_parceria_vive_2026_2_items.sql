with championship as (
  select id
  from public.championships
  where slug = 'parceria-vive-2026-2'
)
update public.match_players mp
set items = '{}'
from public.matches m
inner join championship c on c.id = m.championship_id
where mp.match_id = m.id;

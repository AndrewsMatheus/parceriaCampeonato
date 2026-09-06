with target_championship as (
  select id from public.championships where slug = 'parceria-vive-2026-2'
),
match_meta (match_number, game_id, duration_seconds) as (
  values
    (1, '437030dc', 1882),
    (2, '1e4c5ca2', 1985),
    (3, '0d9fabc0', 1870),
    (4, '0109d65c', 1678),
    (5, '6e5abb03', 1537),
    (6, '411801c1', 1489),
    (8, '37879ff3', 1365),
    (9, '6c4be6de', 1952),
    (10, 'cb90cbaa', 1645),
    (11, '875c2a68', 1693),
    (12, '4e6cc706', 1491),
    (13, 'f10787df', 2496),
    (14, '493201c4', 1789),
    (15, '016b942f', 1610),
    (16, 'd314c82b', 2012)
    -- match 7 (c48bb06a): duration not visible in the print sent (header was cropped)
)
update public.matches m
set
  game_id = mm.game_id,
  duration_seconds = mm.duration_seconds
from match_meta mm
inner join target_championship c on true
where m.championship_id = c.id and m.match_number = mm.match_number;

update public.matches
set game_id = 'c48bb06a'
where championship_id = (select id from public.championships where slug = 'parceria-vive-2026-2')
  and match_number = 7;

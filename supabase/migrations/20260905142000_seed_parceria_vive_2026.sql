insert into public.championships (slug, name, initial_mmr, starts_at, ends_at)
values ('parceria-vive-2026', 'Parceria Vive League of Legends 2026', 833, '2026-05-30', '2026-06-30')
on conflict (slug) do update set
  name = excluded.name,
  initial_mmr = excluded.initial_mmr,
  starts_at = excluded.starts_at,
  ends_at = excluded.ends_at;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Agressivinho', 833, 3772, 1, 38, 15, 72
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Deft', 833, 2737, 2, 41, 35, 54
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Jouzera', 833, 2574, 3, 35, 35, 50
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'JP', 833, 2365, 4, 37, 30, 55
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Bughi', 833, 2273, 5, 27, 26, 51
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Deuzao', 833, 2166, 6, 39, 29, 57
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Buda', 833, 2118, 7, 16, 14, 53
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Argemon', 833, 1919, 8, 23, 23, 50
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Valente', 833, 1675, 9, 34, 36, 49
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Andmat', 833, 1538, 10, 11, 10, 52
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Tubinha', 833, 1488, 11, 22, 29, 43
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Kauzador', 833, 1468, 12, 14, 18, 44
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Lustboy', 833, 1439, 13, 10, 13, 43
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Andrey', 833, 1436, 14, 6, 7, 46
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'shioN', 833, 1259, 15, 3, 2, 60
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Freakazoid', 833, 1214, 16, 4, 6, 40
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Borapae', 833, 1003, 17, 18, 23, 44
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Luisera', 833, 974, 18, 7, 7, 50
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Nightblu3', 833, 929, 19, 5, 8, 38
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Gui Barbosa', 833, 900, 20, 12, 14, 46
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Andrade', 833, 847, 21, 7, 10, 41
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Bobzera', 833, 823, 22, 1, 2, 33
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Gabão', 833, -465, 23, 4, 20, 17
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.players (championship_id, name, initial_mmr, final_mmr, reported_rank, reported_wins, reported_losses, reported_winrate)
select id, 'Servant', 833, 843, null, 1, 3, 25
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, name) do update set
  initial_mmr = excluded.initial_mmr,
  final_mmr = excluded.final_mmr,
  reported_rank = excluded.reported_rank,
  reported_wins = excluded.reported_wins,
  reported_losses = excluded.reported_losses,
  reported_winrate = excluded.reported_winrate;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 1, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Gui Barbosa","lp":240},{"role":"JNG","player":"Nightblu3","lp":240},{"role":"MID","player":"JP","lp":240},{"role":"ADC","player":"Deft","lp":240},{"role":"SUP","player":"Valente","lp":240}],"red":[{"role":"TOP","player":"Kauzador","lp":-153},{"role":"JNG","player":"Argemon","lp":-153},{"role":"MID","player":"Andmat","lp":-153},{"role":"ADC","player":"Jouzera","lp":-153},{"role":"SUP","player":"Borapae","lp":-153}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 240
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 240
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 240
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 240
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 240
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -153
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -153
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -153
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -153
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -153
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 1
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 2, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":244},{"role":"JNG","player":"Valente","lp":230},{"role":"MID","player":"Bughi","lp":244},{"role":"ADC","player":"Deft","lp":230},{"role":"SUP","player":"Agressivinho","lp":244}],"red":[{"role":"TOP","player":"Gui Barbosa","lp":-147},{"role":"JNG","player":"Nightblu3","lp":-147},{"role":"MID","player":"JP","lp":-147},{"role":"ADC","player":"Gabão","lp":-154},{"role":"SUP","player":"Borapae","lp":-147}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 244
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 230
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 244
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 230
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 244
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -147
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -147
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -147
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -154
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -147
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 2
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 3, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Gui Barbosa","lp":222},{"role":"JNG","player":"Argemon","lp":235},{"role":"MID","player":"Jouzera","lp":235},{"role":"ADC","player":"Deft","lp":223},{"role":"SUP","player":"Agressivinho","lp":235}],"red":[{"role":"TOP","player":"Tubinha","lp":-149},{"role":"JNG","player":"Valente","lp":-142},{"role":"MID","player":"Bughi","lp":-149},{"role":"ADC","player":"Gabão","lp":-150},{"role":"SUP","player":"Borapae","lp":-143}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 222
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 235
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 235
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 223
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 235
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -149
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -142
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -149
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -150
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -143
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 3
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 4, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":226},{"role":"JNG","player":"Valente","lp":214},{"role":"MID","player":"Jouzera","lp":227},{"role":"ADC","player":"Deft","lp":214},{"role":"SUP","player":"Borapae","lp":214}],"blue":[{"role":"TOP","player":"Gui Barbosa","lp":-139},{"role":"JNG","player":"Argemon","lp":-144},{"role":"MID","player":"Bughi","lp":-144},{"role":"ADC","player":"Gabão","lp":-144},{"role":"SUP","player":"Agressivinho","lp":-145}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -139
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -144
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -144
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -144
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -145
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 226
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 214
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 227
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 214
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 214
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 4
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 5, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Borapae","lp":219},{"role":"JNG","player":"Nightblu3","lp":244},{"role":"MID","player":"Bughi","lp":229},{"role":"ADC","player":"Deft","lp":219},{"role":"SUP","player":"Agressivinho","lp":230}],"blue":[{"role":"TOP","player":"Tubinha","lp":-149},{"role":"JNG","player":"Valente","lp":-143},{"role":"MID","player":"Jouzera","lp":-149},{"role":"ADC","player":"Gui Barbosa","lp":-143},{"role":"SUP","player":"Argemon","lp":-150}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -149
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -143
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -149
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -143
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -150
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 219
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 244
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 229
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 219
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 230
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 5
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 6, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":180},{"role":"JNG","player":"Argemon","lp":181},{"role":"MID","player":"Jouzera","lp":180},{"role":"ADC","player":"Deft","lp":172},{"role":"SUP","player":"Bughi","lp":180}],"red":[{"role":"TOP","player":"JP","lp":-123},{"role":"JNG","player":"Nightblu3","lp":-118},{"role":"MID","player":"Deuzao","lp":-134},{"role":"ADC","player":"Gabão","lp":-117},{"role":"SUP","player":"Agressivinho","lp":-112}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 180
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 181
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 180
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 172
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 180
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -123
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -118
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -134
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -117
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -112
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 6
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 7, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"JP","lp":181},{"role":"JNG","player":"Argemon","lp":162},{"role":"MID","player":"Deuzao","lp":202},{"role":"ADC","player":"Deft","lp":154},{"role":"SUP","player":"Bughi","lp":162}],"blue":[{"role":"TOP","player":"Tubinha","lp":-98},{"role":"JNG","player":"Nightblu3","lp":-102},{"role":"MID","player":"Jouzera","lp":-99},{"role":"ADC","player":"Gabão","lp":-103},{"role":"SUP","player":"Agressivinho","lp":-99}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -98
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -102
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -103
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 181
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 162
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 202
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 154
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 162
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 7
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 8, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":192},{"role":"JNG","player":"Valente","lp":202},{"role":"MID","player":"Jouzera","lp":193},{"role":"ADC","player":"Bughi","lp":192},{"role":"SUP","player":"Borapae","lp":202}],"blue":[{"role":"TOP","player":"Bobzera","lp":-163},{"role":"JNG","player":"JP","lp":-137},{"role":"MID","player":"Deuzao","lp":-148},{"role":"ADC","player":"Deft","lp":-121},{"role":"SUP","player":"Gabão","lp":-131}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -163
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bobzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -137
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -148
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -131
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 192
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 202
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 193
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 192
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 202
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 8
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 9, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Kauzador","lp":260},{"role":"JNG","player":"Valente","lp":197},{"role":"MID","player":"Jouzera","lp":188},{"role":"ADC","player":"Bughi","lp":188},{"role":"SUP","player":"shioN","lp":276}],"blue":[{"role":"TOP","player":"Tubinha","lp":-125},{"role":"JNG","player":"Argemon","lp":-131},{"role":"MID","player":"Deuzao","lp":-147},{"role":"ADC","player":"Deft","lp":-121},{"role":"SUP","player":"Borapae","lp":-130}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -125
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -131
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -147
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -130
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 260
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 197
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 188
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 188
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 276
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'shioN'
where c.slug = 'parceria-vive-2026' and m.match_number = 9
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 10, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Kauzador","lp":236},{"role":"JNG","player":"Valente","lp":182},{"role":"MID","player":"Deuzao","lp":209},{"role":"ADC","player":"Bughi","lp":173},{"role":"SUP","player":"shioN","lp":248}],"blue":[{"role":"TOP","player":"Tubinha","lp":-114},{"role":"JNG","player":"JP","lp":-128},{"role":"MID","player":"Jouzera","lp":-114},{"role":"ADC","player":"Deft","lp":-110},{"role":"SUP","player":"Borapae","lp":-118}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -114
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -128
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -114
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -110
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -118
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 236
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 182
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 209
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 173
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 248
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'shioN'
where c.slug = 'parceria-vive-2026' and m.match_number = 10
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 11, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":179},{"role":"JNG","player":"Argemon","lp":197},{"role":"MID","player":"Jouzera","lp":179},{"role":"ADC","player":"Deft","lp":172},{"role":"SUP","player":"shioN","lp":252}],"red":[{"role":"TOP","player":"Kauzador","lp":-150},{"role":"JNG","player":"Valente","lp":-124},{"role":"MID","player":"Deuzao","lp":-137},{"role":"ADC","player":"Bughi","lp":-119},{"role":"SUP","player":"Borapae","lp":-123}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 179
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 197
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 179
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 172
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 252
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'shioN'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -150
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -124
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -137
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -119
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -123
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 11
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 12, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":180},{"role":"JNG","player":"Argemon","lp":198},{"role":"MID","player":"Deuzao","lp":214},{"role":"ADC","player":"Deft","lp":174},{"role":"SUP","player":"Borapae","lp":188}],"blue":[{"role":"TOP","player":"JP","lp":-141},{"role":"JNG","player":"Valente","lp":-125},{"role":"MID","player":"Jouzera","lp":-121},{"role":"ADC","player":"Gabão","lp":-141},{"role":"SUP","player":"Bughi","lp":-121}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -141
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -125
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -141
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 180
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 198
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 214
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 174
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 188
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 12
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 13, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"JP","lp":178},{"role":"JNG","player":"Argemon","lp":162},{"role":"MID","player":"Deuzao","lp":174},{"role":"ADC","player":"Deft","lp":143},{"role":"SUP","player":"Luisera","lp":265}],"red":[{"role":"TOP","player":"Tubinha","lp":-98},{"role":"JNG","player":"Bughi","lp":-99},{"role":"MID","player":"Gui Barbosa","lp":-125},{"role":"ADC","player":"Andrade","lp":-154},{"role":"SUP","player":"Borapae","lp":-102}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 178
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 162
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 174
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 143
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 265
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -98
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -125
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -154
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -102
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 13
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 14, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"JP","lp":182},{"role":"JNG","player":"Argemon","lp":166},{"role":"MID","player":"Jouzera","lp":160},{"role":"ADC","player":"Deft","lp":149},{"role":"SUP","player":"Andrade","lp":265}],"blue":[{"role":"TOP","player":"Tubinha","lp":-103},{"role":"JNG","player":"Valente","lp":-110},{"role":"MID","player":"Deuzao","lp":-117},{"role":"ADC","player":"Bughi","lp":-103},{"role":"SUP","player":"Luisera","lp":-158}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -103
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -110
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -117
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -103
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -158
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 182
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 166
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 160
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 149
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 265
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 14
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 15, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Kauzador","lp":235},{"role":"JNG","player":"Argemon","lp":170},{"role":"MID","player":"Deuzao","lp":181},{"role":"ADC","player":"Andrade","lp":262},{"role":"SUP","player":"Agressivinho","lp":218}],"blue":[{"role":"TOP","player":"JP","lp":-123},{"role":"JNG","player":"Valente","lp":-114},{"role":"MID","player":"Jouzera","lp":-111},{"role":"ADC","player":"Deft","lp":-105},{"role":"SUP","player":"Gabão","lp":-134}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -123
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -114
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -105
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -134
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 235
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 170
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 181
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 262
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 218
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 15
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 16, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"JP","lp":171},{"role":"JNG","player":"Valente","lp":157},{"role":"MID","player":"Jouzera","lp":152},{"role":"ADC","player":"Andrade","lp":238},{"role":"SUP","player":"Agressivinho","lp":200}],"red":[{"role":"TOP","player":"Kauzador","lp":-135},{"role":"JNG","player":"Argemon","lp":-106},{"role":"MID","player":"Deuzao","lp":-111},{"role":"ADC","player":"Deft","lp":-97},{"role":"SUP","player":"Gabão","lp":-122}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 171
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 157
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 152
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 238
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 200
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -135
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -106
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -97
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -122
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 16
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 17, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Kauzador","lp":194},{"role":"JNG","player":"Argemon","lp":144},{"role":"MID","player":"Andmat","lp":268},{"role":"ADC","player":"Deft","lp":130},{"role":"SUP","player":"Buda","lp":284}],"red":[{"role":"TOP","player":"JP","lp":-104},{"role":"JNG","player":"Valente","lp":-98},{"role":"MID","player":"Jouzera","lp":-96},{"role":"ADC","player":"Andrade","lp":-134},{"role":"SUP","player":"Agressivinho","lp":-117}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 194
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 144
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 268
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 130
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 284
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -98
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -134
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -117
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 17
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 18, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Kauzador","lp":178},{"role":"JNG","player":"Argemon","lp":134},{"role":"MID","player":"Agressivinho","lp":166},{"role":"ADC","player":"Jouzera","lp":130},{"role":"SUP","player":"Buda","lp":255}],"red":[{"role":"TOP","player":"JP","lp":-96},{"role":"JNG","player":"Valente","lp":-90},{"role":"MID","player":"Andmat","lp":-141},{"role":"ADC","player":"Deft","lp":-83},{"role":"SUP","player":"Andrade","lp":-121}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 178
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 134
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 166
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 130
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 255
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -90
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -141
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -83
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 18
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 19, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":161},{"role":"JNG","player":"Valente","lp":147},{"role":"MID","player":"Andmat","lp":257},{"role":"ADC","player":"Bughi","lp":162},{"role":"SUP","player":"Agressivinho","lp":182}],"blue":[{"role":"TOP","player":"JP","lp":-106},{"role":"JNG","player":"Argemon","lp":-100},{"role":"MID","player":"Deuzao","lp":-112},{"role":"ADC","player":"Deft","lp":-93},{"role":"SUP","player":"Borapae","lp":-115}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -106
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -100
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -112
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -115
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 161
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 147
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 257
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 162
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 182
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 19
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 20, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":146},{"role":"JNG","player":"Valente","lp":133},{"role":"MID","player":"Jouzera","lp":134},{"role":"ADC","player":"Deuzao","lp":152},{"role":"SUP","player":"Agressivinho","lp":163}],"red":[{"role":"TOP","player":"Kauzador","lp":-115},{"role":"JNG","player":"Argemon","lp":-90},{"role":"MID","player":"Andmat","lp":-135},{"role":"ADC","player":"Bughi","lp":-96},{"role":"SUP","player":"Borapae","lp":-103}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 146
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 133
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 134
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 152
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 163
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -115
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -90
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -135
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -103
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 20
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 21, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":169},{"role":"JNG","player":"JP","lp":172},{"role":"MID","player":"Deuzao","lp":176},{"role":"ADC","player":"Jouzera","lp":156},{"role":"SUP","player":"Agressivinho","lp":187}],"red":[{"role":"TOP","player":"Kauzador","lp":-137},{"role":"JNG","player":"Valente","lp":-107},{"role":"MID","player":"Bughi","lp":-115},{"role":"ADC","player":"Deft","lp":-103},{"role":"SUP","player":"Borapae","lp":-122}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 169
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 172
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 176
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 156
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 187
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -137
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -107
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -115
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -103
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -122
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 21
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 22, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Kauzador","lp":168},{"role":"JNG","player":"JP","lp":141},{"role":"MID","player":"Deuzao","lp":144},{"role":"ADC","player":"Jouzera","lp":128},{"role":"SUP","player":"Agressivinho","lp":151}],"blue":[{"role":"TOP","player":"Tubinha","lp":-91},{"role":"JNG","player":"Argemon","lp":-87},{"role":"MID","player":"Bughi","lp":-91},{"role":"ADC","player":"Deft","lp":-81},{"role":"SUP","player":"Borapae","lp":-96}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -87
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -81
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 168
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 141
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 144
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 128
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 151
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 22
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 23, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Kauzador","lp":169},{"role":"JNG","player":"JP","lp":142},{"role":"MID","player":"Bughi","lp":139},{"role":"ADC","player":"Jouzera","lp":130},{"role":"SUP","player":"Agressivinho","lp":153}],"red":[{"role":"TOP","player":"Tubinha","lp":-92},{"role":"JNG","player":"Valente","lp":-89},{"role":"MID","player":"Deuzao","lp":-95},{"role":"ADC","player":"Deft","lp":-84},{"role":"SUP","player":"Argemon","lp":-90}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 169
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 142
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 139
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 130
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 153
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -92
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -89
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -95
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -84
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -90
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 23
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 24, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":107},{"role":"JNG","player":"JP","lp":109},{"role":"MID","player":"Deuzao","lp":110},{"role":"ADC","player":"Deft","lp":95},{"role":"SUP","player":"Agressivinho","lp":117}],"blue":[{"role":"TOP","player":"Kauzador","lp":-79},{"role":"JNG","player":"Valente","lp":-66},{"role":"MID","player":"Bughi","lp":-68},{"role":"ADC","player":"Jouzera","lp":-65},{"role":"SUP","player":"Gui Barbosa","lp":-104}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -79
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -66
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -68
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 107
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 109
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 110
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 95
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 117
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 24
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 25, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Borapae","lp":151},{"role":"JNG","player":"JP","lp":133},{"role":"MID","player":"Deuzao","lp":135},{"role":"ADC","player":"Deft","lp":116},{"role":"SUP","player":"Kauzador","lp":155}],"blue":[{"role":"TOP","player":"Tubinha","lp":-89},{"role":"JNG","player":"Valente","lp":-87},{"role":"MID","player":"Bughi","lp":-89},{"role":"ADC","player":"Andrade","lp":-135},{"role":"SUP","player":"Gui Barbosa","lp":-136}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -89
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -87
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -89
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -135
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -136
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 151
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 133
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 135
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 116
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 155
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 25
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 26, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Valente","lp":120},{"role":"JNG","player":"JP","lp":126},{"role":"MID","player":"Jouzera","lp":122},{"role":"ADC","player":"Deft","lp":111},{"role":"SUP","player":"Gui Barbosa","lp":207}],"blue":[{"role":"TOP","player":"Borapae","lp":-95},{"role":"JNG","player":"Argemon","lp":-88},{"role":"MID","player":"Deuzao","lp":-87},{"role":"ADC","player":"Andrade","lp":-127},{"role":"SUP","player":"Agressivinho","lp":-94}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -95
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -88
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -87
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -127
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -94
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 120
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 126
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 122
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 207
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 26
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 27, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":121},{"role":"JNG","player":"Valente","lp":113},{"role":"MID","player":"Bughi","lp":121},{"role":"ADC","player":"Gui Barbosa","lp":189},{"role":"SUP","player":"Agressivinho","lp":131}],"blue":[{"role":"TOP","player":"Borapae","lp":-90},{"role":"JNG","player":"JP","lp":-81},{"role":"MID","player":"Deuzao","lp":-83},{"role":"ADC","player":"Deft","lp":-73},{"role":"SUP","player":"Buda","lp":-156}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -90
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -81
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -83
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -73
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -156
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 113
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 189
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 131
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 27
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 28, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":172},{"role":"JNG","player":"Argemon","lp":180},{"role":"MID","player":"Bughi","lp":173},{"role":"ADC","player":"Jouzera","lp":168},{"role":"SUP","player":"Gabão","lp":286}],"blue":[{"role":"TOP","player":"Deuzao","lp":-128},{"role":"JNG","player":"Valente","lp":-122},{"role":"MID","player":"Andmat","lp":-224},{"role":"ADC","player":"Gui Barbosa","lp":-183},{"role":"SUP","player":"Agressivinho","lp":-138}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -128
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -122
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -224
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -183
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -138
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 172
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 180
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 173
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 168
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 286
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 28
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 29, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Buda","lp":248},{"role":"JNG","player":"JP","lp":111},{"role":"MID","player":"Deuzao","lp":107},{"role":"ADC","player":"Deft","lp":98},{"role":"SUP","player":"Valente","lp":101}],"red":[{"role":"TOP","player":"Tubinha","lp":-73},{"role":"JNG","player":"Argemon","lp":-76},{"role":"MID","player":"Bughi","lp":-74},{"role":"ADC","player":"Jouzera","lp":-72},{"role":"SUP","player":"Gabão","lp":-107}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 248
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 107
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 98
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 101
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -73
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -76
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -74
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -72
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -107
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 29
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 30, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Jouzera","lp":146},{"role":"JNG","player":"JP","lp":121},{"role":"MID","player":"Andmat","lp":230},{"role":"ADC","player":"Bughi","lp":118},{"role":"SUP","player":"Buda","lp":258}],"blue":[{"role":"TOP","player":"Tubinha","lp":-83},{"role":"JNG","player":"Valente","lp":-78},{"role":"MID","player":"Deuzao","lp":-82},{"role":"ADC","player":"Deft","lp":-77},{"role":"SUP","player":"Argemon","lp":-86}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -83
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -78
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -82
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -77
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -86
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 146
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 230
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 118
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 258
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 30
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 31, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Buda","lp":240},{"role":"JNG","player":"Valente","lp":108},{"role":"MID","player":"Bughi","lp":115},{"role":"ADC","player":"Deft","lp":105},{"role":"SUP","player":"Argemon","lp":120}],"red":[{"role":"TOP","player":"Gui Barbosa","lp":-118},{"role":"JNG","player":"JP","lp":-82},{"role":"MID","player":"Deuzao","lp":-80},{"role":"ADC","player":"Jouzera","lp":-79},{"role":"SUP","player":"Agressivinho","lp":-91}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 240
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 108
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 115
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 105
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 120
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -118
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -82
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -80
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -79
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 31
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 32, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Gui Barbosa","lp":167},{"role":"JNG","player":"Valente","lp":99},{"role":"MID","player":"Jouzera","lp":104},{"role":"ADC","player":"Bobzera","lp":323},{"role":"SUP","player":"Agressivinho","lp":123}],"blue":[{"role":"TOP","player":"Buda","lp":-131},{"role":"JNG","player":"JP","lp":-76},{"role":"MID","player":"Bughi","lp":-75},{"role":"ADC","player":"Deft","lp":-70},{"role":"SUP","player":"Borapae","lp":-93}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -131
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -76
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -70
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 167
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 323
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bobzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 123
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 32
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 33, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Gui Barbosa","lp":159},{"role":"JNG","player":"Valente","lp":98},{"role":"MID","player":"Deuzao","lp":107},{"role":"ADC","player":"Andrade","lp":203},{"role":"SUP","player":"Agressivinho","lp":119}],"blue":[{"role":"TOP","player":"Kauzador","lp":-104},{"role":"JNG","player":"Tubinha","lp":-79},{"role":"MID","player":"Jouzera","lp":-74},{"role":"ADC","player":"Bobzera","lp":-171},{"role":"SUP","player":"Gabão","lp":-119}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -79
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -74
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -171
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bobzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -119
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 159
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 98
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 107
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 203
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 119
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 33
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 34, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":60},{"role":"JNG","player":"JP","lp":59},{"role":"MID","player":"Deuzao","lp":58},{"role":"ADC","player":"Deft","lp":54},{"role":"SUP","player":"Agressivinho","lp":65}],"red":[{"role":"TOP","player":"Buda","lp":-58},{"role":"JNG","player":"Valente","lp":-33},{"role":"MID","player":"Bughi","lp":-35},{"role":"ADC","player":"Jouzera","lp":-33},{"role":"SUP","player":"Gabão","lp":-51}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 60
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 59
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -33
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -35
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -33
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 34
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 35, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Borapae","lp":166},{"role":"JNG","player":"Valente","lp":116},{"role":"MID","player":"Jouzera","lp":120},{"role":"ADC","player":"Deft","lp":116},{"role":"SUP","player":"Gabão","lp":207}],"blue":[{"role":"TOP","player":"Gui Barbosa","lp":-130},{"role":"JNG","player":"JP","lp":-94},{"role":"MID","player":"Deuzao","lp":-92},{"role":"ADC","player":"Andrade","lp":-156},{"role":"SUP","player":"Argemon","lp":-101}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -130
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -94
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -92
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -156
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -101
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 166
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 116
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 120
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 116
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 207
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 35
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 36, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Borapae","lp":129},{"role":"JNG","player":"Valente","lp":92},{"role":"MID","player":"Deuzao","lp":99},{"role":"ADC","player":"Deft","lp":92},{"role":"SUP","player":"JP","lp":102}],"blue":[{"role":"TOP","player":"Gui Barbosa","lp":-96},{"role":"JNG","player":"Buda","lp":-120},{"role":"MID","player":"Jouzera","lp":-68},{"role":"ADC","player":"Bughi","lp":-72},{"role":"SUP","player":"Gabão","lp":-102}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -120
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -68
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -72
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -102
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 129
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 92
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 92
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 102
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 36
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 37, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Borapae","lp":123},{"role":"JNG","player":"Valente","lp":89},{"role":"MID","player":"Deuzao","lp":96},{"role":"ADC","player":"Jouzera","lp":93},{"role":"SUP","player":"Lustboy","lp":361}],"blue":[{"role":"TOP","player":"Tubinha","lp":-75},{"role":"JNG","player":"Buda","lp":-118},{"role":"MID","player":"JP","lp":-71},{"role":"ADC","player":"Deft","lp":-65},{"role":"SUP","player":"Gabão","lp":-101}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -118
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -71
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -101
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 123
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 89
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 361
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 37
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 38, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Borapae","lp":122},{"role":"JNG","player":"Valente","lp":88},{"role":"MID","player":"Deuzao","lp":95},{"role":"ADC","player":"Jouzera","lp":91},{"role":"SUP","player":"Agressivinho","lp":117}],"red":[{"role":"TOP","player":"Tubinha","lp":-75},{"role":"JNG","player":"Argemon","lp":-78},{"role":"MID","player":"Buda","lp":-113},{"role":"ADC","player":"Deft","lp":-65},{"role":"SUP","player":"Lustboy","lp":-180}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 122
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 88
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 95
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 117
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -78
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -113
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -180
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 38
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 39, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":104},{"role":"JNG","player":"Valente","lp":87},{"role":"MID","player":"Deuzao","lp":93},{"role":"ADC","player":"Agressivinho","lp":114},{"role":"SUP","player":"Gabão","lp":149}],"blue":[{"role":"TOP","player":"Borapae","lp":-84},{"role":"JNG","player":"Lustboy","lp":-172},{"role":"MID","player":"Andmat","lp":-139},{"role":"ADC","player":"Deft","lp":-64},{"role":"SUP","player":"Buda","lp":-112}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -84
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -172
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -139
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -112
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 87
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 114
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 149
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 39
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 40, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Borapae","lp":129},{"role":"JNG","player":"JP","lp":111},{"role":"MID","player":"Deuzao","lp":102},{"role":"ADC","player":"Agressivinho","lp":124},{"role":"SUP","player":"Buda","lp":182}],"red":[{"role":"TOP","player":"Tubinha","lp":-81},{"role":"JNG","player":"Valente","lp":-70},{"role":"MID","player":"Jouzera","lp":-74},{"role":"ADC","player":"Deft","lp":-71},{"role":"SUP","player":"Gabão","lp":-108}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 129
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 102
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 124
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 182
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -81
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -70
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -74
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -71
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -108
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 40
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 41, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Borapae","lp":111},{"role":"JNG","player":"Argemon","lp":111},{"role":"MID","player":"Jouzera","lp":89},{"role":"ADC","player":"Agressivinho","lp":108},{"role":"SUP","player":"Lustboy","lp":279}],"red":[{"role":"TOP","player":"Buda","lp":-101},{"role":"JNG","player":"JP","lp":-69},{"role":"MID","player":"Deuzao","lp":-64},{"role":"ADC","player":"Deft","lp":-61},{"role":"SUP","player":"Valente","lp":-61}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 89
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 108
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 279
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -101
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -69
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 41
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 42, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Buda","lp":140},{"role":"JNG","player":"JP","lp":90},{"role":"MID","player":"Jouzera","lp":81},{"role":"ADC","player":"Deft","lp":78},{"role":"SUP","player":"Argemon","lp":103}],"blue":[{"role":"TOP","player":"Borapae","lp":-70},{"role":"JNG","player":"Valente","lp":-56},{"role":"MID","player":"Deuzao","lp":-59},{"role":"ADC","player":"Agressivinho","lp":-69},{"role":"SUP","player":"Lustboy","lp":-137}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -70
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -56
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -59
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -69
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -137
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 140
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 90
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 81
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 78
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 103
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 42
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 43, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Buda","lp":127},{"role":"JNG","player":"Lustboy","lp":212},{"role":"MID","player":"Andmat","lp":195},{"role":"ADC","player":"Servant","lp":348},{"role":"SUP","player":"Agressivinho","lp":92}],"red":[{"role":"TOP","player":"Tubinha","lp":-67},{"role":"JNG","player":"JP","lp":-63},{"role":"MID","player":"Valente","lp":-55},{"role":"ADC","player":"Jouzera","lp":-58},{"role":"SUP","player":"Freakazoid","lp":-196}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 127
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 212
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 195
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 348
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Servant'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 92
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -67
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -63
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -55
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -196
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 43
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 44, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Buda","lp":134},{"role":"JNG","player":"Deuzao","lp":85},{"role":"MID","player":"Andmat","lp":202},{"role":"ADC","player":"Deft","lp":80},{"role":"SUP","player":"JP","lp":89}],"blue":[{"role":"TOP","player":"Borapae","lp":-75},{"role":"JNG","player":"Nightblu3","lp":-166},{"role":"MID","player":"Bughi","lp":-76},{"role":"ADC","player":"Tubinha","lp":-70},{"role":"SUP","player":"Agressivinho","lp":-71}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -166
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -76
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -70
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -71
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 134
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 85
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 202
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 80
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 89
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 44
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 45, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":93},{"role":"JNG","player":"Argemon","lp":104},{"role":"MID","player":"Jouzera","lp":82},{"role":"ADC","player":"Bughi","lp":102},{"role":"SUP","player":"Lustboy","lp":219}],"blue":[{"role":"TOP","player":"Nightblu3","lp":-151},{"role":"JNG","player":"Valente","lp":-57},{"role":"MID","player":"Deuzao","lp":-60},{"role":"ADC","player":"Deft","lp":-57},{"role":"SUP","player":"JP","lp":-62}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -151
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -60
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -62
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 82
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 102
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 219
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 45
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 46, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":100},{"role":"JNG","player":"Argemon","lp":111},{"role":"MID","player":"Jouzera","lp":88},{"role":"ADC","player":"Bughi","lp":110},{"role":"SUP","player":"JP","lp":93}],"red":[{"role":"TOP","player":"Kauzador","lp":-116},{"role":"JNG","player":"Valente","lp":-63},{"role":"MID","player":"Deuzao","lp":-65},{"role":"ADC","player":"Deft","lp":-63},{"role":"SUP","player":"Lustboy","lp":-140}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 100
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 88
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 110
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -116
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -63
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -63
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -140
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 46
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 47, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":82},{"role":"JNG","player":"JP","lp":75},{"role":"MID","player":"Jouzera","lp":72},{"role":"ADC","player":"Bughi","lp":89},{"role":"SUP","player":"Lustboy","lp":177}],"blue":[{"role":"TOP","player":"Kauzador","lp":-88},{"role":"JNG","player":"Argemon","lp":-61},{"role":"MID","player":"Deuzao","lp":-52},{"role":"ADC","player":"Deft","lp":-49},{"role":"SUP","player":"Valente","lp":-49}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -88
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -52
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 82
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 72
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 89
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 177
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 47
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 48, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Kauzador","lp":116},{"role":"JNG","player":"Valente","lp":64},{"role":"MID","player":"Jouzera","lp":60},{"role":"ADC","player":"Bughi","lp":74},{"role":"SUP","player":"JP","lp":57}],"blue":[{"role":"TOP","player":"Tubinha","lp":-46},{"role":"JNG","player":"Argemon","lp":-50},{"role":"MID","player":"Deuzao","lp":-41},{"role":"ADC","player":"Deft","lp":-39},{"role":"SUP","player":"Lustboy","lp":-80}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -46
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -50
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -41
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -39
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -80
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 116
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 60
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 74
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 48
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 49, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":74},{"role":"JNG","player":"Lustboy","lp":148},{"role":"MID","player":"Andmat","lp":170},{"role":"ADC","player":"Deft","lp":62},{"role":"SUP","player":"Freakazoid","lp":311}],"red":[{"role":"TOP","player":"Nightblu3","lp":-132},{"role":"JNG","player":"Agressivinho","lp":-62},{"role":"MID","player":"Argemon","lp":-60},{"role":"ADC","player":"Gui Barbosa","lp":-91},{"role":"SUP","player":"Andrade","lp":-113}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 74
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 148
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 170
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 62
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 311
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -132
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -62
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -60
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -113
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 49
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 50, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Andrey","lp":354},{"role":"JNG","player":"Lustboy","lp":146},{"role":"MID","player":"Gui Barbosa","lp":131},{"role":"ADC","player":"Deft","lp":63},{"role":"SUP","player":"Agressivinho","lp":85}],"red":[{"role":"TOP","player":"Tubinha","lp":-56},{"role":"JNG","player":"JP","lp":-54},{"role":"MID","player":"Andmat","lp":-108},{"role":"ADC","player":"Jouzera","lp":-51},{"role":"SUP","player":"Freakazoid","lp":-165}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 354
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 146
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 131
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 63
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 85
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -56
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -108
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -165
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 50
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 51, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Borapae","lp":92},{"role":"JNG","player":"Lustboy","lp":138},{"role":"MID","player":"Gui Barbosa","lp":126},{"role":"ADC","player":"Deft","lp":61},{"role":"SUP","player":"Agressivinho","lp":82}],"red":[{"role":"TOP","player":"Andrey","lp":-173},{"role":"JNG","player":"Tubinha","lp":-53},{"role":"MID","player":"Bughi","lp":-60},{"role":"ADC","player":"Servant","lp":-173},{"role":"SUP","player":"JP","lp":-52}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 92
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 138
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 126
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 82
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -173
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -60
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -173
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Servant'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -52
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 51
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 52, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Kauzador","lp":126},{"role":"JNG","player":"JP","lp":68},{"role":"MID","player":"Andrey","lp":284},{"role":"ADC","player":"Deft","lp":61},{"role":"SUP","player":"Valente","lp":64}],"red":[{"role":"TOP","player":"Borapae","lp":-65},{"role":"JNG","player":"Lustboy","lp":-91},{"role":"MID","player":"Jouzera","lp":-51},{"role":"ADC","player":"Servant","lp":-165},{"role":"SUP","player":"Luisera","lp":-171}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 126
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 68
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 284
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -165
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Servant'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -171
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 52
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 53, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":80},{"role":"JNG","player":"JP","lp":75},{"role":"MID","player":"Deuzao","lp":77},{"role":"ADC","player":"Deft","lp":67},{"role":"SUP","player":"Freakazoid","lp":304}],"red":[{"role":"TOP","player":"Borapae","lp":-70},{"role":"JNG","player":"Valente","lp":-53},{"role":"MID","player":"Jouzera","lp":-54},{"role":"ADC","player":"Agressivinho","lp":-66},{"role":"SUP","player":"Gabão","lp":-96}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 80
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 77
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 67
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 304
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -70
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -66
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 53
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 54, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Agressivinho","lp":86},{"role":"JNG","player":"Lustboy","lp":142},{"role":"MID","player":"Deuzao","lp":73},{"role":"ADC","player":"Deft","lp":64},{"role":"SUP","player":"Borapae","lp":93}],"red":[{"role":"TOP","player":"Tubinha","lp":-56},{"role":"JNG","player":"JP","lp":-53},{"role":"MID","player":"Andrey","lp":-158},{"role":"ADC","player":"Jouzera","lp":-52},{"role":"SUP","player":"Valente","lp":-51}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 86
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 142
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 73
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -56
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -158
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -52
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 54
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 55, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Andrey","lp":227},{"role":"JNG","player":"Buda","lp":114},{"role":"MID","player":"Deuzao","lp":61},{"role":"ADC","player":"Deft","lp":54},{"role":"SUP","player":"Argemon","lp":78}],"blue":[{"role":"TOP","player":"Kauzador","lp":-75},{"role":"JNG","player":"Lustboy","lp":-74},{"role":"MID","player":"Jouzera","lp":-43},{"role":"ADC","player":"JP","lp":-43},{"role":"SUP","player":"Borapae","lp":-54}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -74
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -43
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -43
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 227
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 114
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 78
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 55
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 56, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Borapae","lp":83},{"role":"JNG","player":"Agressivinho","lp":80},{"role":"MID","player":"Deuzao","lp":66},{"role":"ADC","player":"Deft","lp":58},{"role":"SUP","player":"Valente","lp":63}],"blue":[{"role":"TOP","player":"JP","lp":-47},{"role":"JNG","player":"Argemon","lp":-58},{"role":"MID","player":"Jouzera","lp":-45},{"role":"ADC","player":"Bughi","lp":-58},{"role":"SUP","player":"Freakazoid","lp":-135}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -47
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -45
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -135
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 83
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 80
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 66
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 63
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 56
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 57, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Andrey","lp":254},{"role":"JNG","player":"Lustboy","lp":135},{"role":"MID","player":"Deuzao","lp":71},{"role":"ADC","player":"Bughi","lp":91},{"role":"SUP","player":"Agressivinho","lp":85}],"blue":[{"role":"TOP","player":"JP","lp":-53},{"role":"JNG","player":"Valente","lp":-52},{"role":"MID","player":"Jouzera","lp":-53},{"role":"ADC","player":"Deft","lp":-49},{"role":"SUP","player":"shioN","lp":-187}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -52
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -187
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'shioN'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 254
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 135
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 71
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 85
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 57
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 58, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"JP","lp":66},{"role":"JNG","player":"Nightblu3","lp":235},{"role":"MID","player":"Jouzera","lp":65},{"role":"ADC","player":"Deft","lp":60},{"role":"SUP","player":"Argemon","lp":86}],"blue":[{"role":"TOP","player":"Buda","lp":-87},{"role":"JNG","player":"Valente","lp":-49},{"role":"MID","player":"Deuzao","lp":-51},{"role":"ADC","player":"Bughi","lp":-62},{"role":"SUP","player":"shioN","lp":-164}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -87
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -62
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -164
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'shioN'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 66
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 235
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 60
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 86
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 58
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 59, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Agressivinho","lp":79},{"role":"JNG","player":"Valente","lp":61},{"role":"MID","player":"Deuzao","lp":64},{"role":"ADC","player":"Bughi","lp":80},{"role":"SUP","player":"Borapae","lp":84}],"red":[{"role":"TOP","player":"Tubinha","lp":-54},{"role":"JNG","player":"Buda","lp":-81},{"role":"MID","player":"Andmat","lp":-107},{"role":"ADC","player":"Deft","lp":-44},{"role":"SUP","player":"Freakazoid","lp":-137}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 79
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 80
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 84
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -81
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -107
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -44
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -137
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 59
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 60, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Kauzador","lp":139},{"role":"JNG","player":"Bughi","lp":85},{"role":"MID","player":"Andmat","lp":176},{"role":"ADC","player":"Deft","lp":61},{"role":"SUP","player":"Buda","lp":124}],"blue":[{"role":"TOP","player":"Tubinha","lp":-56},{"role":"JNG","player":"Lustboy","lp":-88},{"role":"MID","player":"Deuzao","lp":-51},{"role":"ADC","player":"Jouzera","lp":-50},{"role":"SUP","player":"Valente","lp":-49}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -56
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -88
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -50
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 139
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 85
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 176
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 124
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 60
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 61, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Deuzao","lp":67},{"role":"JNG","player":"JP","lp":69},{"role":"MID","player":"Bughi","lp":83},{"role":"ADC","player":"Agressivinho","lp":83},{"role":"SUP","player":"Buda","lp":121}],"blue":[{"role":"TOP","player":"Andrey","lp":-142},{"role":"JNG","player":"Valente","lp":-49},{"role":"MID","player":"Jouzera","lp":-50},{"role":"ADC","player":"Deft","lp":-47},{"role":"SUP","player":"Lustboy","lp":-87}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -142
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -50
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -47
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -87
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 67
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 69
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 83
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 83
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 61
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 62, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Buda","lp":104},{"role":"JNG","player":"JP","lp":61},{"role":"MID","player":"Jouzera","lp":58},{"role":"ADC","player":"Bughi","lp":73},{"role":"SUP","player":"Luisera","lp":307}],"blue":[{"role":"TOP","player":"Andrey","lp":-121},{"role":"JNG","player":"Valente","lp":-43},{"role":"MID","player":"Deuzao","lp":-44},{"role":"ADC","player":"Deft","lp":-40},{"role":"SUP","player":"Lustboy","lp":-75}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -121
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -43
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -44
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -40
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -75
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 61
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 73
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 307
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 62
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 63, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Buda","lp":96},{"role":"JNG","player":"JP","lp":57},{"role":"MID","player":"Jouzera","lp":54},{"role":"ADC","player":"Bughi","lp":68},{"role":"SUP","player":"Freakazoid","lp":210}],"blue":[{"role":"TOP","player":"Andrey","lp":-108},{"role":"JNG","player":"Lustboy","lp":-69},{"role":"MID","player":"Deuzao","lp":-42},{"role":"ADC","player":"Deft","lp":-39},{"role":"SUP","player":"Kauzador","lp":-77}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -108
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -69
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -42
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -39
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -77
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 96
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 68
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 210
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 63
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 64, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Andmat","lp":156},{"role":"JNG","player":"JP","lp":60},{"role":"MID","player":"Deuzao","lp":58},{"role":"ADC","player":"Deft","lp":53},{"role":"SUP","player":"Buda","lp":99}],"red":[{"role":"TOP","player":"Kauzador","lp":-81},{"role":"JNG","player":"Lustboy","lp":-74},{"role":"MID","player":"Jouzera","lp":-44},{"role":"ADC","player":"Bughi","lp":-53},{"role":"SUP","player":"Luisera","lp":-158}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 156
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 60
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 58
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -81
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -74
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -44
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -158
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 64
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 65, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Agressivinho","lp":32},{"role":"JNG","player":"Valente","lp":23},{"role":"MID","player":"Deuzao","lp":24},{"role":"ADC","player":"Jouzera","lp":23},{"role":"SUP","player":"Luisera","lp":112}],"red":[{"role":"TOP","player":"Borapae","lp":-20},{"role":"JNG","player":"JP","lp":-16},{"role":"MID","player":"Andmat","lp":-30},{"role":"ADC","player":"Deft","lp":-14},{"role":"SUP","player":"Argemon","lp":-20}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 32
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 23
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 24
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 23
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 112
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -20
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -16
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -30
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -14
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -20
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 65
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 66, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Tubinha","lp":118},{"role":"JNG","player":"JP","lp":97},{"role":"MID","player":"Bughi","lp":116},{"role":"ADC","player":"Jouzera","lp":93},{"role":"SUP","player":"Argemon","lp":136}],"blue":[{"role":"TOP","player":"Agressivinho","lp":-98},{"role":"JNG","player":"Valente","lp":-77},{"role":"MID","player":"Deuzao","lp":-77},{"role":"ADC","player":"Deft","lp":-70},{"role":"SUP","player":"Luisera","lp":-258}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -98
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -77
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -77
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -70
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -258
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 118
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 97
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 116
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 93
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 136
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 66
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 67, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Deuzao","lp":64},{"role":"JNG","player":"JP","lp":65},{"role":"MID","player":"Bughi","lp":78},{"role":"ADC","player":"Jouzera","lp":63},{"role":"SUP","player":"Valente","lp":64}],"red":[{"role":"TOP","player":"Tubinha","lp":-59},{"role":"JNG","player":"Buda","lp":-77},{"role":"MID","player":"Andmat","lp":-107},{"role":"ADC","player":"Deft","lp":-45},{"role":"SUP","player":"Argemon","lp":-66}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 78
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 63
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -59
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -77
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -107
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -45
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -66
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 67
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 68, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":21},{"role":"JNG","player":"Valente","lp":17},{"role":"MID","player":"Deuzao","lp":16},{"role":"ADC","player":"Deft","lp":15},{"role":"SUP","player":"Agressivinho","lp":22}],"red":[{"role":"TOP","player":"Kauzador","lp":-17},{"role":"JNG","player":"Argemon","lp":-12},{"role":"MID","player":"Bughi","lp":-11},{"role":"ADC","player":"Jouzera","lp":-9},{"role":"SUP","player":"Gabão","lp":-18}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 21
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 17
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 16
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 15
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 22
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -17
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -12
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -11
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -9
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -18
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 68
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 69, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Tubinha","lp":67},{"role":"JNG","player":"JP","lp":57},{"role":"MID","player":"Deuzao","lp":55},{"role":"ADC","player":"Deft","lp":49},{"role":"SUP","player":"Luisera","lp":220}],"red":[{"role":"TOP","player":"Buda","lp":-67},{"role":"JNG","player":"Valente","lp":-42},{"role":"MID","player":"Andmat","lp":-90},{"role":"ADC","player":"Andrade","lp":-119},{"role":"SUP","player":"Bughi","lp":-49}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 67
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 55
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 220
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -67
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -42
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -90
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -119
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 69
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 70, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Nightblu3","lp":223},{"role":"JNG","player":"JP","lp":55},{"role":"MID","player":"Andmat","lp":131},{"role":"ADC","player":"Bughi","lp":64},{"role":"SUP","player":"Argemon","lp":77}],"blue":[{"role":"TOP","player":"Tubinha","lp":-49},{"role":"JNG","player":"Valente","lp":-41},{"role":"MID","player":"Deuzao","lp":-42},{"role":"ADC","player":"Deft","lp":-38},{"role":"SUP","player":"Luisera","lp":-122}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -41
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -42
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -38
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -122
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 223
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 55
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 131
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 64
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 77
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 70
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 71, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Agressivinho","lp":null},{"role":"JNG","player":"Valente","lp":null},{"role":"MID","player":"Gui Barbosa","lp":null},{"role":"ADC","player":"Andrade","lp":null},{"role":"SUP","player":"Luisera","lp":null}],"red":[{"role":"TOP","player":"Tubinha","lp":null},{"role":"JNG","player":"JP","lp":null},{"role":"MID","player":"Deuzao","lp":null},{"role":"ADC","player":"Servant","lp":null},{"role":"SUP","player":"Freakazoid","lp":null}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Servant'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 0
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 71
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 72, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Agressivinho","lp":72},{"role":"JNG","player":"JP","lp":53},{"role":"MID","player":"Gui Barbosa","lp":140},{"role":"ADC","player":"Andrade","lp":183},{"role":"SUP","player":"Borapae","lp":84}],"red":[{"role":"TOP","player":"Kauzador","lp":-78},{"role":"JNG","player":"Valente","lp":-41},{"role":"MID","player":"Deuzao","lp":-40},{"role":"ADC","player":"Jouzera","lp":-42},{"role":"SUP","player":"Luisera","lp":-115}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 72
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 140
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 183
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 84
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -78
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -41
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -40
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -42
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -115
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 72
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 73, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Agressivinho","lp":62},{"role":"JNG","player":"Argemon","lp":65},{"role":"MID","player":"Deuzao","lp":45},{"role":"ADC","player":"Andrade","lp":151},{"role":"SUP","player":"Borapae","lp":71}],"blue":[{"role":"TOP","player":"Kauzador","lp":-62},{"role":"JNG","player":"Valente","lp":-33},{"role":"MID","player":"Gui Barbosa","lp":-73},{"role":"ADC","player":"Jouzera","lp":-34},{"role":"SUP","player":"JP","lp":-34}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -62
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -33
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -73
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -34
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -34
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 62
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 65
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 45
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 151
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 71
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 73
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 74, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Kauzador","lp":111},{"role":"JNG","player":"Valente","lp":53},{"role":"MID","player":"Deuzao","lp":53},{"role":"ADC","player":"Agressivinho","lp":72},{"role":"SUP","player":"Borapae","lp":83}],"red":[{"role":"TOP","player":"Jouzera","lp":-41},{"role":"JNG","player":"Argemon","lp":-56},{"role":"MID","player":"Gui Barbosa","lp":-88},{"role":"ADC","player":"Deft","lp":-39},{"role":"SUP","player":"Luisera","lp":-113}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 72
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 83
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -41
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -56
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -88
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -39
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -113
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 74
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 75, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Kauzador","lp":111},{"role":"JNG","player":"JP","lp":57},{"role":"MID","player":"Deuzao","lp":53},{"role":"ADC","player":"Deft","lp":51},{"role":"SUP","player":"Gabão","lp":150}],"blue":[{"role":"TOP","player":"Jouzera","lp":-43},{"role":"JNG","player":"Valente","lp":-42},{"role":"MID","player":"Nightblu3","lp":-136},{"role":"ADC","player":"Andrade","lp":-113},{"role":"SUP","player":"Borapae","lp":-62}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -43
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -42
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -136
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -113
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -62
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 111
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 150
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 75
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 76, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Valente","lp":57},{"role":"JNG","player":"JP","lp":59},{"role":"MID","player":"Deuzao","lp":57},{"role":"ADC","player":"Deft","lp":54},{"role":"SUP","player":"Luisera","lp":192}],"red":[{"role":"TOP","player":"Kauzador","lp":-82},{"role":"JNG","player":"Agressivinho","lp":-59},{"role":"MID","player":"Jouzera","lp":-46},{"role":"ADC","player":"Andrade","lp":-117},{"role":"SUP","player":"Gabão","lp":-104}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 59
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 54
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 192
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -82
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -59
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -46
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -117
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrade'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -104
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 76
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 77, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"JP","lp":46},{"role":"JNG","player":"Valente","lp":43},{"role":"MID","player":"Deuzao","lp":43},{"role":"ADC","player":"Jouzera","lp":44},{"role":"SUP","player":"Luisera","lp":140}],"blue":[{"role":"TOP","player":"Kauzador","lp":-57},{"role":"JNG","player":"Agressivinho","lp":-43},{"role":"MID","player":"Nightblu3","lp":-99},{"role":"ADC","player":"Deft","lp":-31},{"role":"SUP","player":"Gabão","lp":-72}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -43
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -31
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -72
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 46
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 43
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 43
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 44
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 140
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Luisera'
where c.slug = 'parceria-vive-2026' and m.match_number = 77
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 78, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Andrey","lp":255},{"role":"JNG","player":"JP","lp":68},{"role":"MID","player":"Bughi","lp":87},{"role":"ADC","player":"Jouzera","lp":66},{"role":"SUP","player":"Freakazoid","lp":294}],"red":[{"role":"TOP","player":"Tubinha","lp":-70},{"role":"JNG","player":"Valente","lp":-53},{"role":"MID","player":"Deuzao","lp":-53},{"role":"ADC","player":"Deft","lp":-50},{"role":"SUP","player":"Agressivinho","lp":-69}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 255
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 68
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 87
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 66
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 294
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -70
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -50
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -69
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 78
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 79, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Andrey","lp":152},{"role":"JNG","player":"Valente","lp":40},{"role":"MID","player":"Deuzao","lp":40},{"role":"ADC","player":"Deft","lp":38},{"role":"SUP","player":"Agressivinho","lp":55}],"blue":[{"role":"TOP","player":"Buda","lp":-53},{"role":"JNG","player":"JP","lp":-32},{"role":"MID","player":"Bughi","lp":-38},{"role":"ADC","player":"Jouzera","lp":-31},{"role":"SUP","player":"Borapae","lp":-44}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -53
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -32
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -38
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -31
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -44
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Borapae'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 152
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 40
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 40
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 38
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 55
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 79
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 80, 'blue', '{"winner":"blue","teams":{"blue":[{"role":"TOP","player":"Kauzador","lp":99},{"role":"JNG","player":"Valente","lp":49},{"role":"MID","player":"Deuzao","lp":50},{"role":"ADC","player":"Deft","lp":47},{"role":"SUP","player":"Agressivinho","lp":66}],"red":[{"role":"TOP","player":"Andrey","lp":-108},{"role":"JNG","player":"Argemon","lp":-56},{"role":"MID","player":"Bughi","lp":-49},{"role":"ADC","player":"Jouzera","lp":-39},{"role":"SUP","player":"Buda","lp":-67}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', 99
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', 49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', 50
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', 47
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', 66
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', -108
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', -56
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', -49
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', -39
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', -67
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 80
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 81, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Gui Barbosa","lp":38},{"role":"JNG","player":"Argemon","lp":21},{"role":"MID","player":"Andmat","lp":39},{"role":"ADC","player":"Jouzera","lp":14},{"role":"SUP","player":"Agressivinho","lp":17}],"blue":[{"role":"TOP","player":"Tubinha","lp":-11},{"role":"JNG","player":"JP","lp":-8},{"role":"MID","player":"Bughi","lp":-10},{"role":"ADC","player":"Deft","lp":-8},{"role":"SUP","player":"Gabão","lp":-16}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -11
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Tubinha'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -8
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -10
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -8
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -16
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gabão'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 38
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 21
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 39
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 14
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 17
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 81
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 82, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Gui Barbosa","lp":112},{"role":"JNG","player":"Argemon","lp":63},{"role":"MID","player":"Andmat","lp":115},{"role":"ADC","player":"Deft","lp":39},{"role":"SUP","player":"Agressivinho","lp":55}],"blue":[{"role":"TOP","player":"Kauzador","lp":-57},{"role":"JNG","player":"JP","lp":-34},{"role":"MID","player":"Bughi","lp":-40},{"role":"ADC","player":"Jouzera","lp":-33},{"role":"SUP","player":"Freakazoid","lp":-106}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -57
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Kauzador'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -34
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -40
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Bughi'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -33
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -106
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Freakazoid'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 112
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 63
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Argemon'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 115
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andmat'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 39
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 55
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Agressivinho'
where c.slug = 'parceria-vive-2026' and m.match_number = 82
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.matches (championship_id, match_number, winner_side, raw_data)
select id, 83, 'red', '{"winner":"red","teams":{"red":[{"role":"TOP","player":"Buda","lp":98},{"role":"JNG","player":"Valente","lp":52},{"role":"MID","player":"Deuzao","lp":51},{"role":"ADC","player":"Deft","lp":48},{"role":"SUP","player":"Nightblu3","lp":204}],"blue":[{"role":"TOP","player":"Andrey","lp":-113},{"role":"JNG","player":"JP","lp":-42},{"role":"MID","player":"Gui Barbosa","lp":-91},{"role":"ADC","player":"Jouzera","lp":-40},{"role":"SUP","player":"Lustboy","lp":-84}]}}'::jsonb
from public.championships
where slug = 'parceria-vive-2026'
on conflict (championship_id, match_number) do update set
  winner_side = excluded.winner_side,
  raw_data = excluded.raw_data;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'TOP', -113
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Andrey'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'JNG', -42
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'JP'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'MID', -91
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Gui Barbosa'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'ADC', -40
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Jouzera'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'blue', 'SUP', -84
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Lustboy'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'TOP', 98
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Buda'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'JNG', 52
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Valente'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'MID', 51
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deuzao'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'ADC', 48
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Deft'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;

insert into public.match_players (match_id, player_id, side, role, lp_delta)
select m.id, p.id, 'red', 'SUP', 204
from public.matches m
inner join public.championships c on c.id = m.championship_id
inner join public.players p on p.championship_id = c.id and p.name = 'Nightblu3'
where c.slug = 'parceria-vive-2026' and m.match_number = 83
on conflict (match_id, player_id) do update set
  side = excluded.side,
  role = excluded.role,
  lp_delta = excluded.lp_delta;


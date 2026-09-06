create extension if not exists pgcrypto;

create table public.championships (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  name text not null,
  avatar_url text,
  initial_mmr integer not null default 833,
  starts_at date,
  ends_at date,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table public.players (
  id uuid primary key default gen_random_uuid(),
  championship_id uuid not null references public.championships(id) on delete cascade,
  name text not null,
  initial_mmr integer not null default 833,
  final_mmr integer not null default 833,
  reported_rank integer,
  reported_wins integer not null default 0,
  reported_losses integer not null default 0,
  reported_winrate numeric(5,2) not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (championship_id, name)
);

create table public.matches (
  id uuid primary key default gen_random_uuid(),
  championship_id uuid not null references public.championships(id) on delete cascade,
  match_number integer not null,
  winner_side text not null check (winner_side in ('blue', 'red')),
  raw_data jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (championship_id, match_number)
);

create table public.match_players (
  id uuid primary key default gen_random_uuid(),
  match_id uuid not null references public.matches(id) on delete cascade,
  player_id uuid not null references public.players(id) on delete cascade,
  side text not null check (side in ('blue', 'red')),
  role text not null check (role in ('TOP', 'JNG', 'MID', 'ADC', 'SUP', 'UNK')),
  lp_delta integer not null default 0,
  created_at timestamptz not null default now(),
  unique (match_id, player_id)
);

create index players_championship_id_idx on public.players(championship_id);
create index matches_championship_id_idx on public.matches(championship_id);
create index match_players_match_id_idx on public.match_players(match_id);
create index match_players_player_id_idx on public.match_players(player_id);

create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create trigger championships_set_updated_at
before update on public.championships
for each row execute function public.set_updated_at();

create trigger players_set_updated_at
before update on public.players
for each row execute function public.set_updated_at();

create trigger matches_set_updated_at
before update on public.matches
for each row execute function public.set_updated_at();

alter table public.championships enable row level security;
alter table public.players enable row level security;
alter table public.matches enable row level security;
alter table public.match_players enable row level security;

create policy "Public read championships"
on public.championships
for select
using (true);

create policy "Public read players"
on public.players
for select
using (true);

create policy "Public read matches"
on public.matches
for select
using (true);

create policy "Public read match players"
on public.match_players
for select
using (true);

grant select on public.championships to anon, authenticated;
grant select on public.players to anon, authenticated;
grant select on public.matches to anon, authenticated;
grant select on public.match_players to anon, authenticated;

create view public.championship_match_rows
with (security_invoker = true)
as
select
  c.slug as championship_slug,
  m.match_number,
  m.winner_side,
  m.raw_data,
  mp.side,
  mp.role,
  mp.lp_delta,
  p.name as player_name
from public.match_players mp
inner join public.matches m on m.id = mp.match_id
inner join public.players p on p.id = mp.player_id
inner join public.championships c on c.id = m.championship_id;

grant select on public.championship_match_rows to anon, authenticated;

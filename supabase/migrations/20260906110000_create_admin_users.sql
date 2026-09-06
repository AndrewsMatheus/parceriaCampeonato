create table if not exists public.admin_users (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade,
  email text not null unique,
  created_at timestamptz not null default now(),
  constraint admin_users_identity_check check (user_id is not null or email <> '')
);

create unique index if not exists admin_users_user_id_key
on public.admin_users(user_id)
where user_id is not null;

alter table public.admin_users enable row level security;

drop policy if exists "Admins can read their own admin row" on public.admin_users;

create policy "Admins can read their own admin row"
on public.admin_users
for select
to authenticated
using (
  user_id = auth.uid()
  or lower(email) = lower(coalesce(auth.jwt() ->> 'email', ''))
);

grant select on public.admin_users to authenticated;

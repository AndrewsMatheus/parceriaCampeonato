insert into storage.buckets (
  id,
  name,
  public,
  file_size_limit,
  allowed_mime_types
)
values (
  'player-avatars',
  'player-avatars',
  true,
  5242880,
  array['image/jpeg', 'image/png', 'image/webp', 'image/gif']
)
on conflict (id) do update
set
  public = excluded.public,
  file_size_limit = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

create policy "Public read player avatars"
on storage.objects
for select
using (bucket_id = 'player-avatars');

create policy "Authenticated upload player avatars"
on storage.objects
for insert
to authenticated
with check (bucket_id = 'player-avatars');

create policy "Authenticated update player avatars"
on storage.objects
for update
to authenticated
using (bucket_id = 'player-avatars')
with check (bucket_id = 'player-avatars');

create policy "Authenticated delete player avatars"
on storage.objects
for delete
to authenticated
using (bucket_id = 'player-avatars');

-- CivicTech Supabase Setup
-- 1. Create the reports table
create table if not exists reports (
    id uuid default gen_random_uuid() primary key,
    title text,
    category text,
    description text,
    latitude double precision,
    longitude double precision,
    address text,
    image_url text,
    status text default 'pending',
    upvotes integer default 0,
    created_at timestamp with time zone default now()
);

-- 2. Enable Row Level Security (RLS) on reports table
alter table reports enable row level security;

-- 3. Policy: Allow public read (SELECT)
create policy "Allow public read"
    on reports
    for select
    using (true);

-- 4. Policy: Allow public insert (INSERT)
create policy "Allow public insert"
    on reports
    for insert
    with check (true);

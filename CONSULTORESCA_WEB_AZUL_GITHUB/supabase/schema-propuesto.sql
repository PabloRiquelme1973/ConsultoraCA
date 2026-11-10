-- CARSTENS–ANZULOVICH: BORRADOR DE ESTRUCTURA INDEPENDIENTE.
-- NO APLICADO A NINGÚN PROYECTO. No contiene secretos.
-- Ejecutar EXCLUSIVAMENTE en el nuevo proyecto dedicado, tras revisar el cuestionario y permisos.
-- Diseño cerrado por defecto: RLS activado y acceso público denegado.

create table if not exists public.ca_survey_responses (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  study_id text not null,
  origin text not null check (origin in ('web','presencial')),
  zone text,
  answers jsonb not null,
  collected_by uuid references auth.users(id)
);
create index if not exists ca_responses_study_zone on public.ca_survey_responses(study_id,zone,created_at desc);
alter table public.ca_survey_responses enable row level security;
revoke all on public.ca_survey_responses from anon, authenticated;

create table if not exists public.ca_field_visits (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  staff_uid uuid not null references auth.users(id),
  zone text not null,
  gps_lat_approx numeric(7,3),
  gps_lon_approx numeric(7,3),
  accuracy_m integer
);
create index if not exists ca_visits_staff_time on public.ca_field_visits(staff_uid,created_at desc);
alter table public.ca_field_visits enable row level security;
revoke all on public.ca_field_visits from anon, authenticated;

-- Sin policies ni funciones abiertas todavía. Falta desarrollar autenticación, control de roles,
-- API serverless de recepción con anti-bots, moderación, retención y política de privacidad.
-- Nunca colocar un service_role / secret key en JavaScript público.

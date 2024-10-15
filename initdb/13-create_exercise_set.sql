create table mirante.exercise_set (
  id int primary key generated by default as identity,
  creation_date timestamptz not null,
  author int references account(id) not null,
  name text not null,
  enabled boolean not null default true
);

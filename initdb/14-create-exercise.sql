create table mirante.exercise (
  id int primary key generated by default as identity,
  creation_date timestamptz not null,
  author int references account(id) not null,
  set int references exercise_set(id) not null,
  instruction text not null,
  enabled boolean not null default true
);

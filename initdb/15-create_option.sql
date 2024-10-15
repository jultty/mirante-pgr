create table mirante.option (
  id int primary key generated by default as identity,
  creation_date timestamptz not null,
  author int references account(id) not null,
  exercise int references exercise(id) not null,
  content text not null,
  place int,
  enabled boolean not null default true
);

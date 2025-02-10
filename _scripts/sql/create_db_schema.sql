
-- Creates all the necessary tables, constraints, etc.

create table Task (
    id          integer primary key autoincrement,
    title       text    not null,
    description text,
    completed   boolean default false
);

create table TaskTag (
    task_id integer not null,
    tag_id  integer not null,
    foreign key (task_id) references Task(id),
    foreign key (tag_id)  references Tag(id),
    primary key (task_id, tag_id)
);

create table Tag (
    id   integer primary key autoincrement,
    name text    unique not null
);

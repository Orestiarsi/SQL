Orestis-MacBook-Air:~ oresti$ psql todolist
psql (9.6.3)
Type "help" for help.

todolist=# create table todos (
todolist(# id serial primary key,
todolist(# title varchar(255) NOT NULL,
todolist(# details varchar null,
todolist(# priority integer not null default '1',
todolist(# created_at TIMESTAMP not null,
todolist(# completed_at TIMESTAMP null
todolist(# );

todolist=# \dt
        List of relations
 Schema | Name  | Type  | Owner
--------+-------+-------+--------
 public | todos | table | oresti
(1 row)

todolist=# select * from todos;
 id | title | details | priority | created_at | completed_at
----+-------+---------+----------+------------+--------------
(0 rows)

todolist=# insert into todos (title,details, priority, created_at, completed_at) values
('change the vw oil','go by store for supplies', '2','2017-7-27 12:51:23.111',null),
('go play golf', null , '1' , '2017-7-27 12:51:23.111', null),
('visit ABC store', 'one of each category', '1', '2017-7-27 12:51:23.111', null),
('finish week 5 of TIY', null, '1', '2017-7-27 12:51:23.111', '2017-7-27 12:51:23.111'),
('celebrate for anything', 'have fun', '1', '2017-7-27 12:51:23.111', '2017-7-27 12:51:23.111');

select title from todos where completed_at is null;

todolist=# select title from todos where priority >'1';

todolist=# update todos set completed_at = null where id =1;

todolist=# delete from todos where completed_at is not null;

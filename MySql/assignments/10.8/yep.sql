create database fucktable209;

use fucktable209;

create table people (
  id int primary key auto_increment,
  name varchar(20),
  gender varchar(10),
  age int,
  dept varchar(20)
);

insert into
  people(id, name, gender, age, dept)
values(1, 'a', 'male', 1, '云中医'),
  (2, 'b', 'male', 2, '云中医'),
  (3, 'c', 'male', 3, '云中医'),
  (4, 'd', 'female', 4, '云中医'),
  (5, 'e', 'male', 5, '云中医');

update people set gender = 'female' where id in (1, 2, 3);

delete from people where id = 2;

select * from people;
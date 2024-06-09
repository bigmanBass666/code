create database assignment11_13;
use assignment11_13;


-- 1、写一条创建视图的sql语句
create table student (
  id int primary key auto_increment,
  name varchar(20),
  gender varchar(10)
);

insert into student(name, gender) values('Jack', 'male'),('Melody', 'female');

create view v_student as select id, name, gender from student;

-- 2、写一条查看数据库里视图的sql语句
show full tables in assignment11_13 where table_type like 'view';

-- 3、写一条描述des视图的sql语句
desc v_student;

-- 4、写一条查看视图里数据的sql语句
select * from v_student;

-- 5、写一条修改视图里的数据sql语句
alter view v_student as select id, name from student;

-- 6、写一条删除视图里的数据sql语句
delete from v_student where name = 'Jack';

-- 7、写一条删除整个视图的sql语句。
drop view v_student;
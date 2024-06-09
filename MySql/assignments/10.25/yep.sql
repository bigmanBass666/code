show databases;
create database homework10_25;
use homework10_25;
-- 1、	单表查询，查看全部数据。
select *
from tb_student209;
select *
from tb_course209;
select *
from tb_sc209;
-- 2、	两个表的连接查询：查询学生信息和成绩信息共同显示出来。
select std.*,
  sc.grade,
  sc.cno
from tb_student209 std,
  tb_sc209 sc
where std.sno = sc.sno;
-- 3、	三个表的连接查询：查询学生信息、课程信息、成绩信息共同显示出来。
select std.*,
  crs.*,
  sc.grade,
  sc.cno
from tb_student209 std,
  tb_course209 crs,
  tb_sc209 sc
where std.sno = sc.sno
  and crs.cno = sc.cno;

-- 1、	用带in查给定集合的查询：查询随意几个学号集合的学生信息

select * from tb_student209 where sno in (2022802,2022801);

-- 2、	用带in子查询：查出成绩表中不及格的学号，然后根据学号的集合查询出学生信息
select sno from tb_sc209 where grade < 60;
select * from tb_student209 where sno in (select sno from tb_sc209 where grade < 60);
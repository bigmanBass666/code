-- 备注：把每一题的实验截图贴到下面，以10学号重命名上交
show databases;
use homework10_18;
-- 1、	创建一个学生表里面包含班级、成绩的列，随机插入一些数据。
create table student (
  class varchar(20),
  score varchar(10)
);

insert into student (class, score) values 
('class a', '98'),
('class b', '85'),
('class c', '72'),
('class d', '90'),
('class a', '88'),
('class b', '91'),
('class c', '78'),
('class d', '82'),
('class a', '95'),
('class b', '87');

-- 2、	写出查询学生表根据成绩列去排序的sql语句
select * from student order by score;
select  * from student order by score desc;

-- 3、写出查询学生表根据 班级列 筛选 再根据成绩排序的sql语句
select * from student where class = 'class a' order by score;
select * from student where class = 'class a' order by score desc;

-- 4、用group by 去根据 班级的列分组后显示的sql 语句
select class, avg(score) from student group by class;

-- 5、根据班级分组后，用count()计算每个班有多少人的sql 语句
select class, count(*) from student group by class;

-- 6、根据班级分组后，用max()求出每个班的最高分的sql 语句
select class, max(score) from student group by class;

-- 7、根据班级分组后，用min()求出每个班的最低分的sql 语句
select class, min(score) from student group by class;

-- 8、根据班级分组后，用avg()求出每个班的平均分的sql 语句
select class, avg(score) from student group by class;

-- 9、根据班级分组后，用sum()求出每个班的全部同学的总分的sql 语句
select class, sum(score) from student group by class;

-- 10、使用limit 限制数据只输出前面三条数据的sql 语句
select * from student limit 3;
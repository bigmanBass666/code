/*
explain 或者 desc 命令获取 mysql 如何执行 select 语句的信息,包括在 select 语句执行过程中表如何连接和连接的顺序。语法:
#直接在select语句之前加上关键字 explain / desc
explain select 字段列表 from 表名 where 条件;
*/

-- explain 执行计划各字段含义：

-- * 1. id:
-- select查询的序列号,表示查询中执行select子句或者是操作表的顺序(id相同,执行顺序从上到下; id不同,值越大,越先执行)。
select * from student s, course c, student_course sc where s.id = sc.studentid and sc.courseid = c.id;
explain select * from student s, course c, student_course sc where s.id = sc.studentid and sc.courseid = c.id;

-- 查询选修了mysql课程的学生 ;(子查询)
select s.* from student s, course c, student_course sc where s.id = sc.studentid and sc.courseid = c.id and c.id = (select id from course where name = 'mysql');
-- or
select id from course where name = 'mysql';  -- 3
select studentid from student_course where courseid = 3;  -- (1, 2)
select * from student where id in (1, 2);
-- ! or
select * from student where id in (select studentid from student_course where courseid = (select id from course where name = 'mysql'));



-- * 2. select_type
-- 表示select的类型,常见的取值有simple (简单表,即不使用表连接或者子查询)、primary (主查询,即外层的查询) 、union (union 中的第二个或者后面的查询语句)、subquery (select/where之后包含了子查询) 等



-- ! 3. type
-- 表示连接类型，性能由好到差的连接类型为NULL、system、const、eq_ref、ref、range、index、all。



-- ! 4. possible_key
-- 显示可能应用在这张表上的索引，一个或多个。



-- ! 5. Key
-- 实际使用的索引,如果为NULL,则没有使用索引。



-- ! 6. Key_len
-- 表示索引中使用的字节数，该值为索引字段最大可能长度，并非实际使用长度，在不损失精确性的前提下，长度越短越好。
-- 创建
-- create [or replace] view 视图名称 [(列名列表)] as select语句 [with[cascaded | local] check option]
-- * example
create or replace view stu_v_1 as select id, name from student where id <= 10;


-- 2、写一条查看数据库里视图的sql语句
show full tables in student where table_type like 'view';


-- 查看创建视图语句:
-- show create view 视图名称;
-- * example
show create view stu_v_1;

-- 查看视图数据:
-- select * from 视图名称..…;
-- * example
select * from stu_v_1 where id < 3;



-- 修改视图
-- * <根据 or replace>
create or replace view stu_v_1 as select id, name, no from student;

-- * alter
alter view stu_v_1 as select id, name from student;



-- 删除视图
drop view if exists stu_v_1;
show databases;
show tables;
create table student (
    id int primary key,  -- add constraint primary key
    name varchar(20),
    gender varchar(10),
    birthday date
    primary key (id)  -- add constrain primary key
);
desc student;
select table();

alter table student rename to stu;
alter table stu rename to student;
show tables;
alter table student change name strName varchar(10);  -- 改变字段名需要加上字段的数据类型
desc student;
-- 修改字段数据类型 MySQL命令
alter table student modify strName varchar(20);
desc student;
-- 增加字段 MySQL命令
alter table student add address varchar(50);
desc student;
-- 删除字段 MySQL命令
alter table student drop address; 
desc student;
-- 删除数据表
create table shit (
    shit int
);
show tables;
drop table shit ;
show tables;
-- 添加主键
alter table student add constraint pk_student primary key (id);
-- 移除主键
alter table student drop constraint pk_student;
-- 删除某一列
alter table student drop column id;
-- 新增字段
alter table student add id int;
desc student;
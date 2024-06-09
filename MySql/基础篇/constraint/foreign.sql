/* CREATE TABLE 表名(
字段名 数据类型,
...
[CONSTRAINT] [外键名称] FOREIGN KEY(外键字段名) REFERENCES 主表(主表列名)
);
ALTER TABLE 表名 ADD CONSTRAINT 外键名称 FOREIGN KEY(外键字段名) REFERENCES 主表(主表列名); */
show databases;

-- 删除外键
-- ALTER TABLE 表名 DROP FOREIGN KEY 外键名称;
show databases;

create table
    dept (
        id int primary key auto_increment,
        name varchar(5)
    );

insert into
    dept (
        -- id,
        name
    )
values
    ('研发部'),
    ('市场部'),
    ('财务部'),
    ('销售部'),
    ('总经办'),
    ('人事部');

truncate table dept;

select
    *
from
    dept;

create table
    emp (
        id int auto_increment comment 'ID' primary key,
        name varchar(50) not null comment '姓名',
        age int comment '年龄',
        job varchar(20) comment '职位',
        salary int comment '薪资',
        entryDate date comment '入职时间',
        managerId int comment '直属领导ID',
        dept_id int comment '部门ID'
    ) comment '员工表';

INSERT INTO
    emp (
        id,
        name,
        age,
        job,
        salary,
        entryDate,
        managerId,
        dept_id
    )
VALUES
    (1, '金庸', 66, '总裁', 20000, '2000-01-01', null, 5),
    (2, '张无忌', 20, '项目经理', 12500, '2005-12-05', 1, 1),
    (3, '杨道', 33, '开发', 8400, '2000-11-3', 2, 1),
    (4, '韦一笑', 48, '开发', 11000, '2002-02-05', 2, 1),
    (5, '常遇春', 43, '开发', 10500, '2004-09-7', 3, 1),
    (6, '小昭', 19, '程序员鼓励师', 6600, '2004-10-12', 2, 1),
    (7, '郭靖', 30, '经理助理', 8000, '2010-05-23', 1, 2),
    (8, '黄蓉', 28, '财务', 7500, '2012-08-15', 7, 2),
    (9, '杨过', 25, '销售', 9000, '2014-10-02', 1, 3),
    (10, '陆展元', 39, '销售', 11000, '2008-04-19', 9, 3),
    (11, '韩宝儿', 22, '客服', 5000, '2017-09-30', 9, 3),
    (12, '袁承志', 35, '设计师', 9800, '2011-03-08', 7, 4),
    (13, '任盈盈', 27, '设计师', 8700, '2013-06-11', 7, 4),
    (14, '李莫愁', 31, '市场推广', 9500, '2016-11-20', 1, 5),
    (15, '曲非烟', 24, '市场推广', 7000, '2013-08-09', 9, 5),
    (16, '黄药师', 45, '研发经理', 15000, '2000-07-04', 1, 1);

select
    *
from
    emp;

alter table emp add constraint fk_emp_dept_id foreign key (dept_id) references dept (id);

alter table emp drop foreign key fk_emp_dept_id;

delete from dept
where
    id = 1;
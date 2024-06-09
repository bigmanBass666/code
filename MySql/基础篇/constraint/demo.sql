/* 非空约束 限制该字段的数据不能为null not null
唯一约束 保证该字段的所有数据都是唯一、不重复的 unique
主键约束 主键是一行数据的唯一标识，要求非空且唯一 primary key
默认约束 保存数据时，如果未指定该字段的值，则采用默认值 default
检查约束(8.0.16版本之后) 保证字段值满足某一个条件 check
外键约束 用来让两张表的数据之间建立连接，保证数据的一致性和完整性 foreign key */
show databases;

/* id int 主键，并且自动增长
name varchar(10) 不为空，并且唯一
age int 大于0，并且小于等于120
status char(1) 如果没有指定该值，默认为1
gender char(1) 无 */
create table
    user (
        id int primary key auto_increment,
        name varchar(10) not null unique,
        age int check (
            age > 0
            and age <= 120
        ),
        status char(1) default '1',
        gender varchar(6)
    );

desc user;

select
    *
from
    user;
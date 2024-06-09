-- 查询当前数据库支持的存储引警
show engines;

-- 创建表 my_myisam ，并指定MYISAM存储引擎
create table my_myisam (
    id int primary key auto_increment,
    name varchar(10)
) engine = myisam;

show create table my_myisam;

-- 创建表 my_memory ，并指定memory存储引擎
create table my_memory (
    id int primary key auto_increment,
    name varchar(10)
) engine = memory;

show create table my_memory;
-- 1、写出查询指定数据的sql 命令
select * from tb_user where id = 1;

-- 2、查询给定 集合 的查询 in()
select * from tb_user where id in (1, 2, 3);

-- 3、查询给定范围的查询between
select * from tb_user where id between 1 and 7;

-- 4、模糊查询 like
select * from tb_user where phone like '1%';

-- 5、查找空值的命令is null
select * from tb_user where age is null;

-- 6、多个条件查询与 and
select * from tb_user where id = 1 and age = 25;

-- 7、多个条件查询或or
select * from tb_user where id = 1 or age != 25
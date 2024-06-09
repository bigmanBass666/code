-- 创建
delimiter $$
create procedure p1()
begin
    select count(*) from student;
end $$
delimiter ; $$

-- 调用
call p1;

-- 查看
show procedure status where db ="testdb";  -- * 吴伟坚
select * from information_schema.routines where routine_schema = 'fuck';
show create procedure p1;

-- 删除
drop procedure if exists p1;
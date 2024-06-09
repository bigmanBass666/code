-- 标量子查询 里边儿嵌套的query结果只是一个值
-- 1.查询 “销售部”的所有员工信息I
select id from dept where name = '销售部';  -- 4
select * from emp where dept_id = 4;

select * from emp where dept_id = (select id from dept where name = '销售部');

select a.* from emp a, dept b where a.dept_id = b.id and b.name = '销售部';  -- ! mine



-- 2. 查询在“张无忌” 入职之后的员工信息
select datediff(curdate(), entryDate) from emp where name = '张无忌';

select * from emp where datediff(curdate(), entryDate) < (select datediff(curdate(), entryDate) from emp where name = '张无忌');


-- ! 日期可以直接用来比较大小！！！！！！！
select * from emp where entryDate > (select entryDate from emp where name = '张无忌');
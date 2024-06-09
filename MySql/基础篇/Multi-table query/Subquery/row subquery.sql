-- 行子查询
-- 1. 查询与“张无忌” 的薪资及直属领导相同的员工信息 ;
-- * general
select salary, managerId from emp where name = '张无忌';

select * from emp where salary = 12500 and managerId = 1;
-- or
select * from emp where (salary, managerId) = (12500, 1);  -- !!!
-- * general


-- * subquery
select * from emp where (salary, managerId) = (select salary, managerId from emp where name = '张无忌');
-- * subquery
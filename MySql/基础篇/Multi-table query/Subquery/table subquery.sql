-- 表子查询
-- 1. 查询与“张无忌”，“黄蓉”的职位和薪资相同的员工信息 2 8
-- * general
select name, job, salary from emp where id in (2, 8);

select * from emp where (job, salary) = ('开发', 12500) or (job, salary) = ('财务', 9000);
-- * general


-- * table subquery
-- ! < in >
select * from emp where (job, salary) in (select job, salary from emp where id in (2, 8));
-- * table subquery


-- 2. 查询入职日期是 “2006-01-01” 之后的员工信息 ， 及其部门信息
-- * general
select * from emp where entryDate > '2006-01-01';

-- select e.*, d.name from emp e, dept d where e.dept_id = d.id order by e.id;
-- ! 错误 内连接找不出存在null值的行
select e.* from emp e, dept d where ( e.dept_id = d.id ) and (e.entryDate > '2006-01-01');
-- ! 错误 内连接找不出存在null值的行

-- * general


-- ! 应使用外连接 <correct> <table subquery>
-- select e.*, d.name from emp e left join dept d on ( e.dept_id = d.id ) and (e.entryDate > '2006-01-01');
select * from (select * from emp where entryDate > '2006-01-01') e left join dept d on (e.dept_id = d.id);
-- ! 应使用外连接 <correct> <table subquery>
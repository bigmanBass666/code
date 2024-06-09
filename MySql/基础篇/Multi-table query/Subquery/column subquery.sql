-- 列子查询
-- 1.查询“销售部”和“市场部” 的所有员工信息
-- * general
select id from dept where name = '销售部';  -- 4
select id from dept where name = '市场部';  -- 2
select id from dept where name = '销售部' or name = '市场部';
-- * general

-- * mine
select e.id, e.name, e.dept_id, d.name from emp e, dept d where (e.dept_id = d.id) and (e.dept_id = 4 or e.dept_id = 2);
-- or
select e.id, e.name, e.dept_id, d.name from emp e, dept d where (e.dept_id = d.id) and (e.dept_id in (2, 4));
-- * mine

-- * correct
select * from emp where dept_id in (2, 4);

-- ! incorrect
select * from emp where dept_id in (select id from dept where name = '销售部', select id from dept where name = '市场部');
-- ! incorrect

select * from emp where dept_id in (select id from dept where name = '销售部' or name = '市场部');
-- * correct



-- 2. 查询比财务部所有人工资都高的员工信息
-- * general
select id from dept where name = '财务部';  -- 3

select salary from emp where dept_id = 3;  -- 8400

select * from emp where salary > 9000 and salary > 11000 and salary > 5000;
-- * general


-- * attempt <correct>
select salary from emp where dept_id = (select id from dept where name = '财务部');

select * from emp where salary > all (select salary from emp where dept_id = (select id from dept where name = '财务部'));
-- * attempt



-- 3查询比研发部其中任意一人工资高的员工信息
-- * general
select id from dept where name = '研发部';  -- 1

select salary from emp where dept_id = 1;

select * from emp where salary > 12500 or...;
-- * general


-- * attempt
select salary from emp where dept_id = (select id from dept where name = '研发部');

select * from emp where salary > any (select salary from emp where dept_id = (select id from dept where name = '研发部'));
-- * some 与 any 效果一致
select * from emp where salary > some (select salary from emp where dept_id = (select id from dept where name = '研发部'));
-- * attempt
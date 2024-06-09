-- 查询员工的姓名、年龄、职位、部门信息 <implicit inner join>
select e.id, e.name, e.age, e.job, d.name, d.id from emp e, dept d where (e.dept_id = d.id);




-- 查询年龄小于30岁的员工姓名、年龄、职位、部门信息 <explicit inner join>
select e.id, e.name, e.age, e.job, d.name, d.id from emp e inner join dept d on (e.dept_id = d.id) and (e.age < 30);
-- or
select e.id, e.name, e.age, e.job, d.name, d.id from emp e inner join dept d on (e.dept_id = d.id) where (e.age < 30);

-- * table subquery
select * from (select * from emp where age < 30) e left join dept d on (e.dept_id = d.id);
-- * table subquery




-- 查询拥有员工的部门ID、部门名称。<取交集，内连接>
select d.* from dept d, emp e where (d.id = e.dept_id) and (e.dept_id is not null);
-- or
select distinct d.* from dept d, emp e where (d.id = e.dept_id) and (e.dept_id is not null) order by d.id;




-- 查询所有年龄大于40岁的员工,及其归属的部门名称;如果员工没有分配部门,也需要展示出来查询所有员工的工资等级
-- !wrong < and >
select e.id, e.name, e.age, d.name from emp e left join dept d on (e.age > 40) and (e.dept_id = d.id);
-- !wrong < and >

-- !wrong < on 与 where 之后的条件顺序要斟酌 >
select e.id, e.name, e.age, d.name from emp e left join dept d on (e.age > 40) where (e.dept_id = d.id);
-- !wrong < on 与 where 之后的条件顺序要斟酌 >

-- * correct < where >  but why???
select e.id, e.name, e.age, d.name from emp e left join dept d on (e.dept_id = d.id) where (e.age > 40);
-- * correct < where >  but why???




-- 查询所有员工的信息及工资等级
select e.*, s.grade from emp e, salgrade s where (e.salary >= s.loSal) and (e.salary <= hiSal);

-- * 所有员工的信息及工资等级及 < 部门 >
select e.*, d.name, s.grade from emp e, dept d, salgrade s where (e.salary >= s.loSal) and (e.salary <= hiSal) and (e.dept_id = d.id);

-- * 使用 between a and b <高效>
select e.*, d.name, s.grade, s.loSal, s.hiSal from emp e, dept d, salgrade s where (e.dept_id = d.id) and (e.salary between s.loSal and s.hiSal) order by s.grade;




-- 查询“研发部”所有员工的信息及工资等级
select id from dept where (name = '研发部');  -- 1

select
    e.*,
    d.name,
    s.grade
from
    emp e,
    dept d,
    salgrade s
where
    (e.salary between s.loSal and s.hiSal) and 
    (e.dept_id = d.id) and
    (e.dept_id = (select id from dept where name = '研发部'));




-- 查询“研发部”员工的平均工资
-- * scalar subquery
select avg(salary) from emp where (dept_id = (select id from dept where name = '研发部'));
-- * scalar subquery

-- * implicit inner join
select avg(e.salary) from emp e, dept d where (e.dept_id = d.id) and (d.name = '研发部');
-- * implicit inner join



-- 查询工资比"杨过”高的员工信息。
-- * scalar subquery
select * from emp where (salary > (select salary from emp where name = '杨过'));
-- * scalar subquery

-- * self join
select a.* from emp a, emp b where (a.salary > b.salary) and (b.name = '杨过');
-- * self join




-- 查询比平均薪资高的员工信息。
-- * scalar subquery
select * from emp where (salary > (select avg(salary) from emp));
-- * scalar subquery




-- ! 查询低于本部门平均工资的员工信息。
-- * 各部门的平均工资
select e.dept_id, d.name, avg(e.salary) from emp e, dept d where (e.dept_id = d.id) group by e.dept_id order by e.dept_id;
-- * 各部门的平均工资

-- * correct
select * from emp e1 where (salary < (select avg(e2.salary) from emp e2 where (e2.dept_id = e1.dept_id)));
-- * correct




-- ! 查询所有的部门信息，并统计部门的员工人数
select d.id, d.name, (select count(*) from emp e where (e.dept_id = d.id)) '人数' from dept d;
-- select count(*) from emp where (dept_id = (select dept_id from emp));




-- 查询所有学生的选课情况,展示出学生名称,学号,课程名称
select s.name, s.no, c.name from student s, student_course sc, course c  where (s.id = sc.studentId) and (c.id = sc.courseId);
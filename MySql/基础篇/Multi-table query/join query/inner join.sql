-- 内连接演示 explicit inner join

-- 1. 查询每一个员工的姓名 ， 及关联的部门的名称 (隐式内连接实现)
select emp.id, emp.name, dept.name from emp, dept where emp.dept_id = dept.id order by emp.id;
-- 给表起别名, 简化
select e.id, e.name, d.name from emp e, dept d where e.dept_id = d.id order by e.id;


-- 2。 查询每一个员工的姓名 ， 及关联的部门的名称 (显式内连接实现) implicit inner join
select e.id, e.name, d.name from emp e inner join dept d on e.dept_id = d.id order by e.id;
-- inner 可省略
select e.id, e.name, d.name from emp e join dept d on e.dept_id = d.id order by e.id;
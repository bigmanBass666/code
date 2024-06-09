-- 外连接演示 outer join

-- 1. 查询emp表的所有数据，和对应的部门信息(左外连接) (因为之前内连接有一条部门位null的数据查询不出来)
select e.*, d.name from emp e left outer join dept d on e.dept_id = d.id order by e.id;
-- outer 可省略
select e.*, d.name from emp e left join dept d on e.dept_id = d.id order by e.id;

-- 2。 查询dept表的所有数据，和对应的员工信息(右外连接)
select d.*, e.* from emp e right outer join dept d on e.dept_id = d.id order by d.id;
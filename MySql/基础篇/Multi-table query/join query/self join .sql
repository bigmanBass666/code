-- 自连接
-- 自连接查询，可以是内连接查询，也可以是外连接查询。

-- 1.查询员工 及其 所属领导的名字

/* select
    p.id,
    p.name,
    pp.managerId
from
    emp p
    join emp pp
where
    p.id = pp.id
order by
    p.id; */

-- 必须起别名 inner join
select a.id, a.name 'employee name', b.name 'manager name', b.id from emp a emp b where a.managerId = b.id;
-- join
select a.id, a.name 'employee name', b.name 'manager name', b.id from emp a join emp b where a.managerId = b.id;


-- 2.查询所有员工 emp 及其领导的名字 emp ，如果员工没有领导，也需要查询出来 outer join
select a.id, a.name '员工', b.name '领导' from emp a left join emp b on a.managerId = b.id;
-- union all ,union
-- 1.将薪资低于 5000 的员工 ，和 年大于 50 岁的员工全部查询出来
select id, name, salary from emp where salary < 10000;
select id, name, age from emp where age > 35;


select id, name, salary from emp where salary < 10000
union all  -- 直接将结果合并
select id, name, age from emp where age > 35;


select id, name, salary from emp where salary < 10000
union -- 去重
select id, name, age from emp where age > 35;

-- ! 对于联合查询的多张表的列数必须保持一致，字段类型也需要保持一致
select id, name, salary from emp where salary < 10000
union 
select * from emp where age > 35;  -- ! '*' 不可行
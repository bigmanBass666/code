show databases;
use fuck;
show tables;
select * from dept;
select * from emp;
alter table emp drop foreign key fk_emp_dept_id;
truncate table emp;
truncate table dept;
desc emp;
desc dept;
alter table emp add constraint fk_emp_dept_id foreign key (dept_id) references dept (id);
alter table emp drop foreign key fk_emp_dept_id;
alter table emp add constraint fk_emp_dept_id foreign key (dept_id) references dept (id) on update cascade on delete cascade;
update emp set id = 9 where id = 1;

-- 多表查询 笛卡尔积
select * from emp, dept where emp.dept_id = dept.id order by emp.id;
update emp set dept_id = null where id = 16;
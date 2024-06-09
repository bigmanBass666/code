/* no action 当在父表中删除/更新对应记录时,首先检查该记录是否有对应外键,如果有则不允许删除/更新。(与restrict一致) 
restrict 当在父表中删除/更新对应记录时,首先检查该记录是否有对应外键,如果有则不允许删除/更新。(与no action一致)
cascade 当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有，则也删除/更新外键在子表中的记录。
set null 当在父表中删除对应记录时,首先检查该记录是否有对应外键,如果有则设置子表中该外键值为null (这就要求该外键允许取null)。
set default 父表有变更时，子表将外键列设置成一个默认的值(innodb不支持)不采取行动限制级联设置为空 */
show databases;

use itcast;

show tables;

use fuck;

show tables;

select
    *
from
    dept;

insert into
    dept (name)
values
    ('研发部');

truncate table dept;

alter table emp add constraint fk_emp_dept_id foreign key (dept_id) references dept (id);

-- cascade
alter table emp add constraint fk_emp_dept_id foreign key (dept_id) references dept (id) on update cascade on delete cascade;

-- set null
alter table emp add constraint fk_emp_dept_id foreign key (dept_id) references dept(id) on delete set null;


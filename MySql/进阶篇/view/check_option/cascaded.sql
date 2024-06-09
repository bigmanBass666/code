create or replace view stu_v_1 as select id, name from student where id <= 20 with cascaded check option;

select * from stu_v_1;

insert into stu_v_1 values(6,'Tom');

insert into stu_v_1 values(30, 'Tom');  -- ! cannot insert.
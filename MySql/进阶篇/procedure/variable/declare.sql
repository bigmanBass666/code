delimiter $$
create procedure p2()
begin
    declare student_count int default 0;
    set @student_count := 2;
    select count(*) into @student_count from student;
    select @student_count;
end $$
delimiter ;
set @my_name = 'yes';
set @my_age := 10;
set @my_height = 3, @my_weight = 2;

-- 推荐使用 :=

select @my_color := 'red';
select count(*) into @my_count from student;


select @my_name, @my_age, @my_height, @my_weight;
select @my_color, @my_count;
-- create
delimiter $$

create function fuc209(in_id int)
returns date
deterministic
begin
    declare out_save_time date;

    select save_time into out_save_time from time_log209 where log_id = in_id;

    return out_save_time;
end $$

delimiter ; $$

-- drop 
drop function fuc209;

-- use the function
select fuc209(1);
select fuc209(2);

-- select the function
show function status where db = 'assignment11_29';
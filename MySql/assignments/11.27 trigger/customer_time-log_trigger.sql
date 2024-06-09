delimiter $$

create trigger trigger209_insert after insert on customer for each row

begin
    insert into time_log209(save_time, info) values(NOW(), "A user has been added.");
end $$


create trigger trigger209_update after update on customer for each row

begin
    insert into time_log209(save_time, info) values(NOW(), "There are new orders.");
end $$


create trigger trigger209_delete after delete on customer for each row

begin
    insert into time_log209(save_time, info) values(NOW(), "There are items deleted.");
end $$

delimiter ; $$

show triggers;

-- drop trigger trigger209_insert;
-- drop trigger trigger209_update;
-- drop trigger trigger209_delete;


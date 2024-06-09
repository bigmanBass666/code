create table time_log209 (
    log_id int primary key auto_increment,
    save_time date,
    info varchar(50)
);

select * from time_log209;

truncate time_log209;

drop table time_log209;
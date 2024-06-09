create table my_order(
    order_id int primary key,
    good_id int,
    num int,
    price double
);

insert into my_order values(1, 1, 1, 100);
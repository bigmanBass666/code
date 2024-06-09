create table customer(
    id int primary key auto_increment,
    name varchar(20),
    gender varchar(10)
);

insert into customer(name, gender) values ('Jack', 'male');
insert into customer(name, gender) values ('Melody', 'female');

select * from customer;

drop table customer;

truncate table customer;
create database test209;
use test209;

create table customer(
  id int primary key auto_increment,
  name varchar(10),
  birth date,
  phone varchar(20),
  address varchar(10)
);

select * from customer;

create table good(
  id int primary key auto_increment,
  name varchar(10),
  price varchar(10),
  volume varchar(10),
  goods_date date
);

select * from good;

create table awesome_order(
  id int primary key auto_increment,
  customer_id int,
  good_id int,
  num varchar(10),
  sum_price varchar(10),
  order_date date,
  constraint fk_customer_id foreign key (customer_id) references customer(id),
  constraint fk_good_id foreign key (good_id) references good(id)
);

select * from awesome_order;
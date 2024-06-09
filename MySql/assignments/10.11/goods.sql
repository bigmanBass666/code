show databases;
create database homework10_11;
use homework10_11;
show tables;

-- （1）客户（客户号、姓名、地址、联系电话）
create table client (
  id int primary key auto_increment,
  name varchar(20),
  address varchar(20),
  phone varchar(20)
);

-- （2）商品（商品号、商品名、商品出厂日期、单价。）
create table goods (
  id int primary key auto_increment,
  name varchar(20),
  price varchar(10),
  date_of_production date
);

-- （3）订单（订单号、日期、商品号、数量、客户号、总金额）
create table order_form (
  order_number int primary key auto_increment,
  order_date date,
  good_id int,
  good_count int,
  client_id int,
  gross_price varchar(10),
  
  constraint fk_good_id foreign key(good_id) references goods(id),
  constraint fk_client_id foreign key(client_id) references client(id)
);

-- 插入示例订单数据
insert into my_order (order_date, good_id, good_count, client_id, gross_price)
values ('2023-01-01', 1, 2, 1001, '50.00');

insert into my_order (order_date, good_id, good_count, client_id, gross_price)
values ('2023-02-03', 2, 1, 1002, '30.00');

-- 插入示例商品数据
insert into goods (id, name, price)
values (1, '商品A', '20.00');

insert into goods (id, name, price)
values (2, '商品B', '10.00');

-- 插入示例客户数据
insert into client (id, name, address)
values (1001, '客户甲', '北京市');

insert into client (id, name, address)
values (1002, '客户乙', '上海市');
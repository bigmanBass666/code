-- 4、	给以上三张表插入多条数据、删除一条数据、更新一条数据
insert into customer(name, birth, phone, address)
values('Jack', '1996-1-1', '1', '云中医'),
  (
    'Melody',
    '2004-11-24',
    '19925099233',
    'TsingHua'
  );

delete from customer where name = 'Jack';

update customer set phone = 1 where name = 'Melody';

insert into good(name, price, volume, goods_date)
values('codfish', '10$', '10kg', '2022-9-2'),
(
  'codfish',
  '10$',
  '10kg',
  '2022-9-2'
  ),
(
  'beef',
  '50$',
  '20kg',
  '2000-2-1'
  );


insert into awesome_order(customer_id, good_id, num, sum_price, order_date)
values(
  2,
  2,
  '10',
  '100',
  '2022-9-2'
  ),
(
  3,
  3,
  '20',
  '200',
  '2000-2-1'
  );

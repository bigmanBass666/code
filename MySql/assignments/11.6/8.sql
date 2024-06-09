-- 8、	查询已购买的商品的信息
select good_id from awesome_order; 
select * from good where id in (select good_id from awesome_order);
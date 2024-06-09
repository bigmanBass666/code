-- 7、	把订单表和商品表根据gid 连接起来去查询两个表的信息展示出来。
select * from awesome_order o, good g where (g.id = o.id);
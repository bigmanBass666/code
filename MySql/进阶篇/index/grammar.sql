-- 创建索引
create [unique | fulltext] index index_name on table_name (index_col_name,...);

-- 查看索引
show index from table_name;

-- 删除索引
drop index index_name on table_name;



-- 1. name字段为姓名字段，该字段的值可能会重复，为该字段创建索引。
show index from tb_user;
create index idx_user_name on tb_user (name);


-- 2. phone手机号字段的值，是非空，且唯一的，为该字段创建唯一索引
create unique index idx_user_phone on tb_user (phone);
show index from tb_user;


-- 3.为profession、age、status创建联合索引。
create index idx_user_profession_age_status on tb_user (profession, age, status);
show index from tb_user;


-- 4.为email建立合适的索引来提升查询效率
create index idx_user_email on tb_user (email);
show index from tb_user;

-- 删除索引
drop index idx_user_email on tb_user;
show index from tb_user;
-- 删除索引
-- 1. Using filesort :
-- 通过表的索引或全表扫描，读取满足条件的数据行，然后在排序缓冲区sort buffer中完成排序操作，所有不是通过索引直接返回排序结果的排序都叫 FileSort排序。

-- 2. Using index :
-- 通过有序索引顺序扫描直接返回有序数据,这种情况即为using index,不需要额外排序,操作效率高。


-- 没有创建索引时，根据age, phone进行排序
explain select id, age,phone from tb_user order by age , phone;

-- 创建索引
create index idx_user_age_phone_aa on tb_user(age,phone);

-- 创建索引后，根据age, phone进行升序排序
explain select id, age,phone from tb_user order by age , phone;

-- 创建索引后，根据age, phone进行降序排序
explain select id,age,phone from tb_user order by age desc , phone desc;
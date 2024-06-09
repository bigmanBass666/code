create table account (
    id int auto_increment primary key,
    name varchar(10),
    money varchar(10)
);

insert into
    account (
        id,
        name,
        money
    )
values (
    null,
    '张三',
    '2000'
),
(
    null,
    '李四',
    '2000'
);

-- transfer account
select * from account where name = '张三';

update account set money = money - 1000 where name = '张三';

update account set money = money + 1000 where name = '李四';

select * from account where name = '李四';


-- * 1.更改提交方式
select @@autocommit;

set @@autocommit = 0;

-- 提交事务
commit;

-- 回滚事务
rollback;


-- * 开启事务
start transaction;
-- or
begin;
-- * 同样的 commit 与 rollback
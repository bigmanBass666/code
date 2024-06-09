-- delimiter ??
-- create procedure pt3(in al varchar(10)，in a2 varchar(10),in a3 double)
-- begin
-- ####开启事务##
-- ##声明 退出 把柄
-- sq1 异常
-- declare exit handler for solexception
-- begin
-- #返回点a
-- rollback to a;
-- commit;
-- end:
-- start transaction:
-- update customer set money =200 where cid ="107";#无论出错与否都好，返回点之前都会提交
-- ###返回到a点
-- savepoint a:
-- update customerset money =money-a3 where cname =al;updateset money = money+a3where cname =a2 :customer
-- end
-- commit;
-- 22
delimiter $$

create procedure p_transfer(in sender varchar(20), in recipient varchar(20), in money float, in error double)
begin
    -- 声明 退出 把柄 sql 异常
    declare exit handler for sqlexception
        begin
            -- 返回点a
            rollback to a;
            commit;
        end;

        start transaction:
        update student209 set balance = 200 where id ="107";
        -- 返回到a点
        savepoint a;
        
        update student209 set balance = balance - money where name = sender;
        update student209 set balance = balance + money where name = recipient;

        commit;
end $$

delimiter ; $$
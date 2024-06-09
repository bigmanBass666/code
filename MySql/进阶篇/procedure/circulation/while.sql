-- 计算从1累加到n的值， n为传入的参数值。
show databases;
delimiter $$
create procedure add(in n int)
begin
    declare sum int default 0;
    while n > 0 do
        set sum := sum + n;
        set n := n - 1;
    end while;
    select sum;
end $$
delimiter ;
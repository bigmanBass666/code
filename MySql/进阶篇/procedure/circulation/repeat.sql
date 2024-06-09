-- like < do while >
/* repeat
    some sql...
    until <ending condition>
end repeat; */


-- 计算从1累加到n的值， n为传入的参数值。
delimiter $$
create procedure repeatTest(in n int)
begin
    declare sum int default 0;
    repeat
        set sum := sum + n;
        set n := n - 1;
    until n < 1   -- ! 条件后面不能有分号
    end repeat;
    select sum;
end $$
delimiter ;
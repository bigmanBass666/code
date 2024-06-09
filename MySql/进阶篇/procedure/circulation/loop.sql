-- 计算从1累加到n的值， n为传入的参数值。
delimiter $$
create procedure loopAdd(in n int)
begin
    declare sum int default 0;

    sum: loop
        if n < 1 then
            leave sum;
        end if;

        set sum := sum + n;
        set n := n - 1;
    end loop sum;

    select sum;

end $$
delimiter ;



-- 2.计算从1到n之间的偶数累加的值，n为传入的参数值。
delimiter $$

create procedure iterateTest(in n int)

begin
    declare sum int default 0;

    sum: loop
        if n < 1 then   -- !!! 记得加上then
            leave sum;
        end if;

        if n % 2 = 1 then
            set n := n - 1;
            iterate sum;
        end if;   -- !!! if结束记得加上end if

        set sum := sum + n;
        set n := n - 1;
    end loop sum;

    select sum;

end $$

delimiter ;
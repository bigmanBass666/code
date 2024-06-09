-- 根据传入的月份，判定月份所属的季节(要求采用case结构)。
-- 1. 1-3月份，为第一季度
-- 2. 4-6月份，为第二季度
-- 3. 7-9月份，为第三季度
-- 4. 10-12月份，为第四季度

delimiter $$

create procedure quarter(in month int)

begin
    declare result varchar(20);
    case
        when month >= 1 and month <= 3 then
            set result := 'first';
        when month >= 4 and month <= 6 then
            set result := 'second';
        when month >= 7 and month <= 9 then
            set result := 'third';
        when month >= 10 and month <= 12 then
            set result := 'fourth';
        else
            set result := 'Invalid parameter';
    end case;

    select concat('The quarter of the month you entered is: ', result);
end$$

delimiter ;

call quarter(14);
k
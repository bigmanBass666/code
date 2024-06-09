-- 根据传入(in)参数score，判定当前分数对应的分数等级，并返回(out)。

-- score >= 85分，等级为优秀。

-- score >= 60分 且 score < 85分，等级为及格。

-- score < 60分，等级为不及格。


delimiter $$

create procedure p4(in score int, out result varchar(10))
begin
    if score >= 85 then
        set result := 'excellent';
    elseif score >= 60 then
        set result := 'pass';
    else
        set result := 'fail';
    end if;
end $$

delimiter ;

call p4(90, @result);
select @result;


-- 将传入的 200分制的分数，进行换算，换算成百分制，然后返回
delimiter $$

create procedure p5(inout score double)
begin
    set score := score / 2;
end $$

delimiter ;

set @score := 200;
call p5(@score);
select @score;
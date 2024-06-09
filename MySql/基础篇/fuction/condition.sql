/* if(value , t , f) 如果value为true，则返回t，否则返回f
ifnull(value1,value2) 如果value1不为空，返回value1，否则返回value2
case when [val1 ] then [res1] ... else[ default ] end 如果val1为true，返回res1，... 否则返回default默认值
case[expr] when [val1 ] then [res1] ... else[ default] end 如果expr的值等于val1，返回res1，... 否则返回default默认值 */
show databases;

-- case when then else end
-- 需求: 查询emp表的员工姓名和工作地址 (北京/上海 ----> 一线城 ，其他 ---> 二线城)
select
    name,
    case workAddress
        when '汕尾' then concat ('这是一线城市', workAddress)
        when '南京' then concat ('这是', workAddress)
        else concat ('二线城市', workAddress)
    end as '工作地址'
from
    emp;

-- 案例: 统计班级各个学员的成绩，展示的规则如下:
-- >= 85，展示优秀
-- >= 60，展示及格
-- 否则，展示不及格
create table
    score (
        id int,
        name varchar(20),
        math int,
        english int,
        chinese int
    );

desc score;

select
    *
from
    score;

insert into
    score (id, name, math, english, chinese)
values
    (1, 'tom', 67, 88, 95),
    (2, 'rose', 23, 66, 90),
    (3, 'jack', 56, 98, 76);

select
    id,
    name,
    if (
        math >= 85,
        concat (math, ' 优秀'),
        if (
            math >= 60,
            concat (math, ' 及格'),
            concat (math, ' 不及格')
        )
    ) as 'Math',
    if (
        english >= 85,
        concat (english, ' 优秀'),
        if (
            english >= 60,
            concat (english, ' 及格'),
            concat (english, ' 不及格')
        )
    ) as 'English',
    if (
        chinese >= 85,
        concat (chinese, ' 优秀'),
        if (
            chinese >= 60,
            concat (chinese, ' 及格'),
            concat (chinese, ' 不及格')
        )
    ) as 'Chinese'
from
    score;

select
    id,
    name,
    case
        when math >= 85 then concat (math, ' 优秀')
        when math >= 60 then concat (math, ' 及格')
        else concat (math, ' 不及格')
    end as 'Math',
    case
        when english >= 85 then concat (english, ' 优秀')
        when english >= 60 then concat (english, ' 及格')
        else concat (english, ' 不及格')
    end as 'English',
    case
        when chinese >= 85 then concat (chinese, ' 优秀')
        when chinese >= 60 then concat (chinese, ' 及格')
        else concat (chinese, ' 不及格')
    end as 'Chinese'
from
    score;
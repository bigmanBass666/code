show databases;

SELECT
    DATABASE ();

show tables;

CREATE TABLE
    emp (
        id int,
        workNum varchar(10),
        name varchar(10),
        gender varchar(10),
        age tinyint unsigned,
        idCard varchar(18),
        workAddress varchar(50),
        entryDate date
    );

DESC emp;

INSERT INTO
    emp (
        id,
        workNum,
        name,
        gender,
        age,
        idCard,
        workAddress,
        entryDate
    )
VALUES
    (
        6,
        'W006',
        '刘八',
        '男',
        27,
        '210105199701010006',
        '沈阳',
        '2021-09-08'
    ),
    (
        7,
        'W007',
        '张九',
        '男',
        29,
        '441302199301010007',
        '深圳',
        '2018-12-30'
    ),
    (
        8,
        'W008',
        '王十',
        '女',
        31,
        '320111199101010008',
        '南京',
        '2016-06-12'
    ),
    (
        9,
        'W009',
        '李十一',
        '男',
        33,
        '440308198901010009',
        '珠海',
        '2015-03-25'
    ),
    (
        10,
        'W010',
        '赵十二',
        '女',
        24,
        '610106200001010010',
        '西安',
        '2023-02-17'
    ),
    (
        11,
        'W011',
        '钱十三',
        '男',
        26,
        '330501199801010011',
        '温州',
        '2020-07-05'
    ),
    (
        12,
        'W012',
        '孙十四',
        '女',
        28,
        '440604199601010012',
        '汕头',
        '2019-01-22'
    ),
    (
        13,
        'W013',
        '李十五',
        '男',
        32,
        '310116199111010013',
        '上海',
        '2017-09-30'
    ),
    (
        14,
        'W014',
        '赵十六',
        '女',
        23,
        '320602200201010014',
        '南京',
        '2022-12-11'
    ),
    (
        15,
        'W015',
        '钱十七',
        '男',
        25,
        '330401199801010015',
        '宁波',
        '2021-06-28'
    ),
    (
        16,
        'W016',
        '孙十八',
        '女',
        27,
        '440811199601010016',
        '潮州',
        '2020-02-04'
    ),
    (
        17,
        'W017',
        '周十九',
        '男',
        30,
        '110105200001010017',
        '北京',
        '2019-08-15'
    ),
    (
        18,
        'W018',
        '吴二十',
        '女',
        26,
        '410183199511010018',
        '郑州',
        '2018-03-07'
    ),
    (
        19,
        'W019',
        '郑二一',
        '男',
        29,
        '320681199301010019',
        '苏州',
        '2017-10-20'
    ),
    (
        20,
        'W020',
        '王二二',
        '女',
        31,
        '440305199101010020',
        '深圳',
        '2022-04-13'
    );

SELECT
    *
FROM
    emp;

SELECT
    name,
    workNum,
    age
FROM
    emp;

SELECT
    name,
    workAddress AS '工作地址'
FROM
    emp;

SELECT
    name,
    workAddress '工作地址'
FROM
    emp;

-- as 关键字可省略
SELECT DISTINCT
    workAddress
FROM
    emp;

TRUNCATE emp;

SELECT
    *
FROM
    emp
WHERE
    age <= 25;

UPDATE emp
SET
    idCard = NULL
WHERE
    name = '王二二';

SELECT
    *
FROM
    emp;

SELECT
    *
FROM
    emp
WHERE
    idCard IS NULL;

SELECT
    *
FROM
    emp
WHERE
    idCard IS NOT NULL;

SELECT
    *
FROM
    emp
WHERE
    age != 25;

SELECT
    *
FROM
    emp
WHERE
    age BETWEEN 20 AND 25;

SELECT
    *
FROM
    emp
WHERE
    gender = '女'
    AND age < 25;

SELECT
    *
FROM
    emp
WHERE
    age = 23
    OR age = 24
    OR age = 25;

SELECT
    *
FROM
    emp
WHERE
    age IN (23, 24, 25, 26);

show databases;

SELECT
    DATABASE ();

show tables;

SELECT
    *
FROM
    emp;

SELECT
    gender,
    count(*)
FROM
    emp
GROUP BY
    gender;

SELECT
    gender,
    avg(age)
FROM
    emp
GROUP BY
    gender;

SELECT
    workAddress,
    count(*)
FROM
    emp
WHERE
    count(id) = 2
GROUP BY
    workAddress;

SELECT
    workAddress,
    count(*)
FROM
    emp
WHERE
    age > 25
GROUP BY
    workAddress
HAVING
    count(*) = 2;

SELECT
    *
FROM
    emp
ORDER BY
    age ASC;

-- asc 可省略 
SELECT
    *
FROM
    emp
ORDER BY
    entryDate DESC;

SELECT
    *
FROM
    emp
ORDER BY
    age,
    entryDate DESC;

SELECT
    *
FROM
    emp
LIMIT
    10;

SELECT
    *
FROM
    emp
LIMIT
    13, 10;

SELECT
    count(*)
FROM
    emp;

-- DQL 语句练习
-- 1.查询年龄为20,21,22,23岁的女性员工信息。
select * from emp where age in(20,21,22,23) and gender = "女";
-- 2.查询性别为 男 ，并且年龄在 20-40 岁(含)以内的姓名为三个字的员工。
select * from emp where gender = "男" and age between 20 and 40 and name like "___";
select * from emp where gender = "男" and age between 20 and 40;
-- 3，统计员工表中，年龄小于60岁的 ，男性员工和女性员工的人数
select gender, count(*) from emp where age < 60 group by gender;
-- 4，查询所有年龄小于等于35岁员工的姓名和年龄，并对查询结果按年龄升序排序，如果年龄相同按入职时间降序排序。
select name, age, entryDate from emp where age <= 35 order by age asc, entryDate desc;
-- 5.查询性别为男，且年龄在20-40 岁(含)以内的前5个员工信息，对查询的结果按年龄升序排序，年龄相同按入职时间升序排序。
select * from emp where gender = "男" and age between 20 and 40 order by age asc, entryDate asc limit 0, 5;

-- 查询年龄大于15的员工的姓名、年龄，并根据年龄进行升序排序
select name, age from emp where age > 15 order by age asc;
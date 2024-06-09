create database assignment11_15;
use assignment11_15;

-- 1、创建存储过程:转钱的存储过程:输入三个变量,转钱人,接受人,金额。根据输入的变量去拼接 更新顾客表的金额 的sql 语句

create table student209(
  id int primary key auto_increment,
  name varchar(20),
  balance float,
  gender varchar(10)
);

insert into student209(name, balance, gender)
  values('Jack', 1000, 'male'),
  ('Melody', 2000, 'female'),
  ('Jason', 3000, 'male'),
  ('IShowSpeed', 4000, 'female');


delimiter $$

create procedure p_transfer(in sender varchar(20), in recipient varchar(20), in money float)
begin
  update student209 set balance = balance - money where name = sender;
  update student209 set balance = balance + money where name = recipient;
  select * from student209;
end $$

delimiter ; $$

-- 2、查看数据库的存储过程的sql语句;
show procedure status where db ="assignment11_15";

-- 3、执行某个名字的存储过程;
call p_transfer('Jack', 'Melody', 10);

-- 4、删除某个名字的存储过程;
drop procedure p_transfer;
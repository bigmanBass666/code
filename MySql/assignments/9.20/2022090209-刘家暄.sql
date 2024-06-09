-- use 2022090209_melon;
-- select database();
-- select @@character_set_database;
-- alter database 2022090209_melon rename to melon_2022090209;
-- drop database  2022090209_melon;
-- create database melon_2022090209;
-- show databases;
-- drop database melon_2022090209 ;






show databases like 'melon%';

create database melon_2022090209 character set gbk;

use melon_2022090209;

select @@character_set_database;

alter database melon_2022090209 character set utf8;

drop database melon_2022090209;

show engines;
-- 查看系统变量
-- SHOW [SESSION|GLOBAL] VARIABLES;
show variables;  -- ! 默认为session




-- 可以通过LIKE模糊匹配方式查找变量
-- SHOW [SESSION|GLOBAL] VARIABLES LIKE '.....';
show session variables like 'auto%';
show global variables like 'auto%';




-- 查看指定变量的值
-- SELECT @@[SESSION|GLOBAL].系统变量名;
select @@autocommit;
select @@global.autocommit;



-- 设置系统变量
-- SET [SESSION| GLOBAL]系统变量名=值;
-- SET @@[SESSION|GLOBAL]系统变量名= 值;
set session autocommit = 1;
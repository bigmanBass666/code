/* CURDATE() 返回当前日期
CURTIME() 返回当前时间
NOW() 返回当前日期和时间
YEAR(date) 获取指定date的年份
MONTH(date) 获取指定date的月份
DAY(date) 获取指定date的日期
DATE_ADD(date, INTERVAL expr type) 返回一个日期/时间值加上一个时间间隔expr后的时间值
DATEDIFF(date1, date2) 返回起始时间date1和结束时间date2之间的天数 (date1 - date2) */


-- 查询所有员工的入职天数，并根据入职天数倒序排序。
use fuck;
select name, concat( datediff(curdate(), entryDate), ' 天') from emp order by datediff(curdate(), entryDate) desc;
-- 可以起别名方便书写
select name, datediff(curdate(), entryDate) as entryDates from emp order by entryDates desc;
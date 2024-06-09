/* CEIL(x) 向上取整
FLOOR(x) 向下取整
MOD(x, y) 返回x/y的模
RAND() 返回0~1内的随机数
ROUND(x, y) 求参数x的四舍五入的值，保留y位小数 */


-- 6位 随机数
select rpad(floor(1000000 * rand()), 6, 0);
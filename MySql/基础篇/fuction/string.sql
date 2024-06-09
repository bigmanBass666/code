/* concat(s1,s2,...sn) 字符串拼接，将s1，s2，... sn拼接成一个字符串
lower(str) 将字符串str全部转为小写
upper(str) 将字符串str全部转为大写
lpad(str,n,pad) 左填充，用字符串pad对str的左边进行填充，达到n个字符串长度
rpad(str,n,pad) 右填充，用字符串pad对str的右边进行填充，达到n个字符串长度
trim(str) 去掉字符串头部和尾部的空格
substring(str,start,len) 返回从字符串str从start位置起的len个长度的字符串 */


-- 工号补零至5位
update emp
set
    worknum = lpad (workNum, 5, 0);
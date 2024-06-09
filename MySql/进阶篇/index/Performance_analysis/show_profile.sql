/*
show profiles 能够在做SQL优化时帮助我们了解时间都耗费到哪里去了。通过have-profiling参数,能够看到当前MySQL是否支持profile操作:
SELECT @@have_profiling ;
*/



/*

#查看每一条SQL的耗时基本情况
show profiles;

#查看指定query_id的SQL语句各个阶段的耗时情况
show profile for query query_id;
example: show profile query 16;

#查看指定query_id的SQL语句CPU的使用情况
show profile cpu for query query_id;

*/
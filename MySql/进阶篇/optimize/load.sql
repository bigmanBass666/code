#客户端连接服务端时，加上参数 --local-infile
'mysql --local-infile -u root -p'

#设置全局参数local_infile为1,开启从本地加载文件导入数据的开关
set global local_infile = 1;

#执行load指令将准备好的数据，加载到表结构中
load data local infile '/root/sqll.log' into table `tb_user' fields terminated by ',' lines terminated by '\n';
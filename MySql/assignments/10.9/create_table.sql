create database homework10_9;

use homework10_9;

create table tb_user(
	id int primary key auto_increment comment '主键',
	name varchar(50) not null comment '用户名',
	phone varchar(11) not null comment '手机号',
	email varchar(100) comment '邮箱',
	profession varchar(11) comment '专业',
	age tinyint unsigned comment '年龄',
	gender char(1) comment '性别 , 1: 男, 2: 女',
	status char(1) comment '状态',
	createTime datetime comment '创建时间'
) comment '系统用户表';

insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('吕布', '17799990000', 'lvbu666@163.com', '软件工程', 23, '1', '6', '2001-02-02 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('曹操', '17799990001', 'caocao666@qq.com', '通讯工程', 33, '1', '0', '2001-03-05 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('赵云', '17799990002', '17799990@139.com', '英语', 34, '1', '2', '2002-03-02 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('孙悟空', '17799990003', '17799990@sina.com', '工程造价', 54, '1', '0', '2001-07-02 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('花木兰', '17799990004', '19980729@sina.com', '软件工程', 23, '2', '1', '2001-04-22 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('大乔', '17799990005', 'daqiao666@sina.com', '舞蹈', 22, '2', '0', '2001-02-07 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('露娜', '17799990006', 'luna_love@sina.com', '应用数学', 24, '2', '0', '2001-02-08 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('程咬金', '17799990007', 'chengyaojin@163.com', '化工', 38, '1', '5', '2001-05-23 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('项羽', '17799990008', 'xiaoyu666@qq.com', '金属材料', 43, '1', '0', '2001-09-18 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('白起', '17799990009', 'baiqi666@sina.com', '机械工程及其自动化', 27, '1', '2', '2001-08-16 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('韩信', '17799990010', 'hanxin520@163.com', '无机非金属材料工程', 27, '1', '0', '2001-06-12 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('荆轲', '17799990011', 'jingke123@163.com', '会计', 29, '1', '0', '2001-05-11 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('兰陵王', '17799990012', 'lanlinwang666@126.com', '工程造价', 44, '1', '1', '2001-04-09 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('狂铁', '17799990013', 'kuangtie@sina.com', '应用数学', 43, '1', '2', '2001-04-10 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('貂蝉', '17799990014', '84958948374@qq.com', '软件工程', 40, '2', '3', '2001-02-12 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('妲己', '17799990015', '2783238293@qq.com', '软件工程', 31, '2', '0', '2001-01-30 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('芈月', '17799990016', 'xiaomin2001@sina.com', '工业经济', 35, '2', '0', '2000-05-03 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('嬴政', '17799990017', '8839434342@qq.com', '化工', 38, '1', '1', '2001-08-08 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('狄仁杰', '17799990018', 'jujiamlm8166@163.com', '国际贸易', 30, '1', '0', '2007-03-12 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('安琪拉', '17799990019', 'jdodm1h@126.com', '城市规划', 51, '2', '0', '2001-08-15 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('典韦', '17799990020', 'ycaunanjian@163.com', '城市规划', 52, '1', '2', '2000-04-12 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('廉颇', '17799990021', 'lianpo321@126.com', '土木工程', 19, '1', '3', '2002-07-18 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('后羿', '17799990022', 'altycj2000@139.com', '城市园林', 20, '1', '0', '2002-03-10 00:00:00');
insert into tb_user (name, phone, email, profession, age, gender, status, createTime) values ('姜子牙', '17799990023', '37483844@qq.com', '工程造价', 29, '1', '4', '2003-05-26 00:00:00');
show databases;
create database assignment10_30;
use assignment10_30;

-- foreign key

-- 创建学生表格
create table tb_student209(
  sno varchar(10) primary key,
  sname varchar(10) not null unique,
  ssex char(2),
  sage int,
  sdept varchar(10)
);
insert into tb_student209(sno,sname,ssex,sage,sdept) values("2022801","唐三藏","男",18,"西游班");
insert into tb_student209(sno,sname,ssex,sage,sdept) values("2022802","孙悟空","男",18,"西游班");
insert into tb_student209(sno,sname,ssex,sage,sdept) values("2022803","猪八戒","男",18,"西游班"), ("2022805","沙和尚","男",18,"西游班");

select * from tb_student209;


-- 创建课程
create table tb_course209(
  cno varchar(10) primary key,
  cname varchar(10),
  author varchar(10)
);

insert into tb_course209 values("901","数据库","作者1");
insert into tb_course209 values("902","python","作者2");

select * from tb_course209;


-- 创建成绩表
create table tb_sc209(
  cno varchar(10),
  sno  varchar(10),
  grade int,
  primary key(cno,sno),
  constraint fk_sno foreign key (sno) references tb_student209(sno),
  constraint fk_cno foreign key (cno) references tb_course209(cno)
);

insert into tb_sc209 values("901","2022801",90);
insert into tb_sc209 values("901","2022802",70);
insert into tb_sc209 values("901","2022803",50);
insert into tb_sc209 values("902","2022801",88);
insert into tb_sc209 values("902","2022802",58);
insert into tb_sc209 values("902","2022803",48);

alter table tb_sc209 add constraint fk_sno foreign key (sno) references tb_student209(sno);
alter table tb_sc209 drop foreign key fk_sno;

select * from tb_sc209;
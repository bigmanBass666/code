create table books (
    id int primary key auto_increment,
    name varchar(20),
    author varchar(20),
    publishingHouse varchar(20),
    price float
) default character set utf8;


create table reader (
    libraryCardId int primary key auto_increment,
    name varchar(10),
    gender varchar(10),
    dept varchar(10),
    address varchar(20)
) default character set utf8;


create table borrowing (
    libraryCardId int primary key auto_increment,
    bookId int,
    borrowingDate date,
    returnDate date,
    notes varchar(50),
    constraint fk_libraryCardId foreign key (libraryCardId) references reader (libraryCardId),
    constraint fk_bookId foreign key (bookId) references books (id)
) default character set utf8;


-- 增加字段
alter table books add firstAddition int;
alter table books add secondAddition varchar(10);
alter table books add yyds int;

-- 修改字段数据类型
alter table books modify column yyds varchar(1);

-- 删除字段
alter table books drop yyds;
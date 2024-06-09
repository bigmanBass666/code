create table
    tb_user (
        id int primary key auto_increment,
        name varchar(10),
        age int,
        gender varchar(10),
        phone char(11)
    );

create table
    tb_user_edu (
        id int primary key auto_increment,
        degree varchar(10),
        major varchar(10),
        primarySchool varchar(10),
        middleSchool varchar(10),
        university varchar(10),
        userId int unique,
        constraint fk_userId foreign key (userId) references tb_user (id)
    );

insert into
    tb_user (id, name, age, gender, phone)
values
    (null, '黄渤', 45, '1', '18800001111'),
    (null, '冰冰', 35, '2', '18800002222'),
    (null, '码云', 55, '1', '18800008888'),
    (null, '李彦宏', 50, '1', '18800009999');

insert into
    tb_user_edu (
        id,
        degree,
        major,
        primarySchool,
        middleSchool,
        university,
        userId
    )
values
    (
        null,
        '本科',
        '舞蹈',
        '静安区第一小学',
        '静安区第一中学',
        '北京舞蹈学院',
        1
    ),
    (
        null,
        '硕士',
        '表演',
        '朝阳区第一小学',
        '朝阳区第一中学',
        '北京电影学院',
        2
    ),
    (
        null,
        '本科',
        '英语',
        '杭州市第一小学',
        '杭州市第一中学',
        '杭州师范大学',
        3
    ),
    (
        null,
        '本科',
        '应用数学',
        '阳泉第一小学',
        '阳泉区第一中学',
        '清华大学',
        4
    );

select * from tb_user_edu;
select * from tb_user;
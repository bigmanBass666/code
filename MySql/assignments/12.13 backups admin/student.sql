create database assignment12_13;

use assignment12_13;

create table
    student (
        id int primary key auto_increment,
        name varchar(20),
        gender varchar(20)
    );

insert into
    student (name, gender)
values
    ('Jack', 'male'),
    ('Melody', 'female');
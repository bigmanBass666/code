create table
    student (
        id int primary key auto_increment,
        name varchar(10),
        no varchar(10)
    ) comment '学生表';

insert into
    student (id, name, no)
values
    (null, '黛绮丝', '2000100101'),
    (null, '谢逊', '2000100102'),
    (null, '殷天正', '2000100103'),
    (null, '韦一笑', '2000100104');

select
    *
from
    student;

create table
    course (
        id int primary key auto_increment,
        name varchar(10)
    ) comment '课程表';

insert into
    course (name)
values
    ('Java'),
    ('PHP'),
    ('MySQL'),
    ('Hadoop');

select
    *
from
    course;

create table
    student_course (
        id int primary key auto_increment,
        studentId int not null,
        courseId int not null,
        constraint fk_studentId foreign key (studentId) references student (id),
        constraint fk_courseId foreign key (courseId) references course (id)
    ) comment '学生_课程中间表';

insert into
    student_course (id, studentId, courseId)
values
    (null, 1, 1),
    (null, 1, 2),
    (null, 1, 3),
    (null, 2, 2),
    (null, 2, 3),
    (null, 3, 4);

select * from student_course;
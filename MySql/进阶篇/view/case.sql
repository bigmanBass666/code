-- 1,为了保证数据库表的安全性,开发人员在操作tb_user表时,只能看到的用户的基本字段,屏蔽手机号和邮箱两个字段。
create or replace view tb_user_v_1 as select id, name, profession, age, gender, status, createTime from tb_user;


-- 2. 查询每个学生所选修的课程（三张表联查），这个功能在很多的业务中都有使用到，为了简化操作，定义一个视图。
select s.no, s.name, c.name from student s, course c, student_course sc where s.id = sc.studentId and c.id = sc.courseId;

create or replace view student_course_view as (select s.no 'student number', s.name 'student name', c.name 'course name' from student s, course c, student_course sc where s.id = sc.studentId and c.id = sc.courseId);

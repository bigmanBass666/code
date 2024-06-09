SHOW DATABASES;

SELECT
    DATABASE ();

SHOW TABLES;

CREATE TABLE
    employee_info (
        num int,
        job_num varchar(10),
        name varchar(10),
        gender char(1),
        age tinyint unsigned,
        id char(18),
        entry_time date
    ) comment '员工表';

DESC employee_info;

show
CREATE TABLE
    employee_info;

ALTER TABLE employee_info ADD nickname varchar(20);

ALTER TABLE employee_info change nickname username varchar(30);

DESC employee_info;

ALTER TABLE employee_info
DROP username;

ALTER TABLE employee_info
rename to employee;

DESC employee;

show tables;

SELECT
    *
FROM
    employee;

INSERT INTO
    employee
VALUES
    (11, 333, 'melon', '男', 10, 3333, '2018-02-02');

insert INTO
    employee
VALUES
    (12, 343, 'fuck', '女', 10, 3333, '2018-02-02');

insert INTO
    employee
VALUES
    (13, 323, 'json', '女', 10, 3333, '2018-02-02');

insert INTO
    employee
VALUES
    (14, 313, 'shit', '男', 10, 3333, '2018-02-02');

update employee
set
    entry_time = '2018-2-2';

SELECT
    *
FROM
    employee;

UPDATE employee
SET
    id = 44
WHERE
    name = 'fuck';

UPDATE employee
SET
    id = 3,
    age = 4
WHERE
    name = 'json';

UPDATE employee
SET
    entry_time = '2004-11-24';

DELETE FROM employee
WHERE
    gender = '女';

DELETE FROM employee;

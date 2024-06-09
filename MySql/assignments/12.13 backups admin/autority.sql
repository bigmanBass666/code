-- 1.查看有多少用户
select
    user
from
    mysql.user;

-- 2.新建一个用户
create user ljx identified by 'root';

-- 3.修改登录用户的密码
alter user ljx identified by 'password';

rename user ljx to ljx209;

-- 权限，授权 grant 取消权限 revoke
-- 4.查看用户权限
show grants for ljx209;

show grants for 'root';

-- 5.给用户授权
grant
select
,
    insert on library.* to ljx209;

-- 6.取消授权 的sql命令
revoke all on *.*
from
    ljx209;

-- 7.删除用户
drop user ljx209;

select
    *
from
    student;
@echo off

REM 停止MySQL服务
net stop MySQL_protable

REM 删除MySQL服务
e:\melon\apps\MySQL\mysql-8.1.0-winx64\bin\mysqld.exe --remove MySQL_protable

REM 检查服务是否删除成功
@REM sc query MySQL_protable | findstr /i "STATE"

REM 提示删除成功消息
@REM echo The MySQL service has been deleted.

REM 结束脚本
@REM exit /b

pause
@echo off

REM 检查MySQL安装目录是否存在
if not exist "f:\melon\apps\MySQL\mysql-8.1.0-winx64\bin" (
    echo MySQL installation directory does not exist! Ensure that MySQL is correctly installed on the USB flash drive.
    pause
    exit /b
)

REM 注册MySQL服务
@REM f:\melon\apps\MySQL\mysql-8.1.0-winx64\bin\mysqld.exe --install MySQL_protable --defaults-file=d:\melon\apps\MySQL\mysql-8.1.0-winx64\my.ini
f:\melon\apps\MySQL\mysql-8.1.0-winx64\bin\mysqld.exe --install MySQL_protable

REM 检查服务注册是否成功
@REM sc query MySQL_protable | findstr /i "STATE"

REM 提示成功消息
@REM echo The MySQL service has been registered.

REM 开启MySQL服务（可选）
@REM echo Start the MySQL service...
net start MySQL_protable

REM 等待MySQL启动完全（可选）
@REM ping 127.0.0.1 -n 10 > nul

REM 运行MySQL客户端（可选）
REM echo 运行MySQL客户端...
REM U:\MySQL\bin\mysql.exe -uroot -p

REM 结束脚本
@REM exit /b

pause
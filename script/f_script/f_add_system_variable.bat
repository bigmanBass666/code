@echo off

REM 添加路径到系统环境变量
setx PATH "%PATH%;f:\melon\apps\Git\bin;f:\melon\apps\MySQL\mysql-8.1.0-winx64\bin;f:\melon\apps\VSCode_portable\VSCode-win32-x64-1.85.0\bin" /m

REM 提示成功消息
@REM echo 路径已成功添加到系统环境变量。

REM 重新打开一个新命令提示符窗口使变更生效（可选）
pause

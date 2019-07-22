@echo off

title %~n0:������

::set "code_dir=D:\Program Files\Microsoft VS Code\"
::set "qd_dir=E:\qd\cpt\lqdzzwqd"
set "qd_dir=%~dp0"


::git config --global i18n.commitencoding utf-8
::git config --global i18n.logoutputencoding gbk
::chcp 65001 ����ҳ�ͱ����UTF-8
::chcp 936   ���뷽ʽ��ʱ�Ļ�gbk
::4.ʱ���ȡ
::4.ʱ���ȡ��yyyy-MMM-dd HH:mm:ss.fff ע������3��M MMM ������ʱ��Сʱ��ͻ
set "yyyy=%date:~0,4%"
set "MMM=%date:~5,2%"
set "dd=%date:~8,2%"
set "HH=%time:~0,2%"
if /i %HH% lss 10 ( set "HH=0%time:~1,1%")
set "mm=%time:~3,2%"
set "ss=%time:~6,2%"
set "fff=%time:~9,2%"
set "now_datetime=%yyyy%-%MMM%-%dd% %HH%:%mm%:%ss%"

set "fast_message=�����ύ����_%now_datetime%"


goto startup
::goto title

:title
set "taskname=################"
echo ##### %taskname% #####
echo 1. git pull
echo 11. git push ����
echo 2. git add + push ����
echo 22. %fast_message%
echo ##### %taskname% #####
set/p a=���������:
cls
::if "%a%"=="0" goto qd_vscode
if "%a%"=="1"  goto git_pull
if "%a%"=="11" goto git_push
if "%a%"=="2" goto git_add_push
if "%a%"=="22" goto git_fast_add_push
echo ��������������������
goto title

:startup
cls

set "taskname=001.�������"
echo ##### %taskname%��ʼ #####
cd /D "%qd_dir%"
call git pull
echo ##### %taskname%���� #####

goto title

set "taskname=000.���ļ���"
echo ##### %taskname%��ʼ #####
::start /D "%code_dir%" Code.exe "%qd_dir%"
::call "%code_exe%" "%qd_dir%"
cd /D "%qd_dir%"
start .
echo ##### %taskname%���� #####



:git_pull
cls
set "taskname=002.�������"
echo ##### %taskname%��ʼ #####
cd /D "%qd_dir%"
call git pull
echo ##### %taskname%���� #####
goto title


:git_push
cls
set "taskname=002.��������"
echo ##### %taskname%��ʼ #####
cd /D "%qd_dir%"
call git push
echo ##### %taskname%���� #####
goto title

:git_add_push
cls
set "taskname=003.git add + push ����"
echo ##### %taskname%��ʼ #####
cd /D "%qd_dir%"
call git add .
set /p mesage=�ύ����Ϣ:
call git commit -m "%mesage%"
call git push
call git log --oneline
echo ##### %taskname%���� #####
goto title

:git_fast_add_push
cls
set "taskname=003.git add + push ����"
echo ##### %taskname%��ʼ #####
cd /D "%qd_dir%"
call git add .
call git commit -m "%fast_message%"
call git push
call git log --oneline
echo ##### %taskname%���� #####
goto title
@ECHO OFF

git status

git add --all

git status

set /p message=Enter message for Command 1: 

git commit -m message

git status

PAUSE

git push origin-gitee master

git push origin  master


PAUSE

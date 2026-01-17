@echo off
title woahwoahwoah
color 0A

:loop
set /a r=%random% %% 8

if %r%==0 goto msg
if %r%==1 goto title
if %r%==2 goto beep
if %r%==3 goto calc
if %r%==4 goto fakehack
if %r%==5 goto wait
if %r%==6 goto colors
if %r%==7 goto echojunk

:msg
echo.
echo [RANDOM] Your computer feels funny today.
goto cont

:title
title %random%-%random%-%random%
goto cont

:beep
echo ^G
goto cont

:calc
start calc
goto cont

:fakehack
echo INITIALIZING MAINFRAME...
ping localhost -n 2 >nul
echo BYPASSING SECURITY...
ping localhost -n 2 >nul
echo ACCESS DENIED LOL
goto cont

:wait
ping localhost -n %random% >nul
goto cont

:colors
color %random%
goto cont

:echojunk
echo %random%%random%%random%%random%%random%
goto cont

:cont
ping localhost -n 2 >nul
goto loop

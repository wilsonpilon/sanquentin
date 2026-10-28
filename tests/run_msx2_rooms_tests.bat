@echo off
setlocal
set "LOG=%~dp0..\projects\msx2\out\rooms-test.log"
if exist "%LOG%" del "%LOG%"
call "%~dp0..\projects\msx2\run.bat" -script "%~dp0capture_msx2_rooms.tcl"
if errorlevel 1 exit /b 1
if not exist "%LOG%" exit /b 1
findstr /c:"FAIL:" /c:"captured" /c:"PASS: MSX2 rooms" "%LOG%"
findstr /x /c:"PASS: MSX2 rooms" "%LOG%" >nul
exit /b %ERRORLEVEL%

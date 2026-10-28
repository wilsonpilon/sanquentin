@echo off
setlocal
"%~dp0..\MSXgl\tools\build\Node\node.exe" "%~dp0test_disks.js"
if errorlevel 1 exit /b 1
set "LOG=%~dp0..\projects\msx1\out\dos2-release-test.log"
if exist "%LOG%" del "%LOG%"
call "%~dp0..\projects\msx2\run.bat" -script "%~dp0capture_msx1_dos2.tcl"
if errorlevel 1 exit /b 1
if not exist "%LOG%" exit /b 1
type "%LOG%"
findstr /x /c:"PASS: MSX1 release" "%LOG%" >nul
exit /b %ERRORLEVEL%

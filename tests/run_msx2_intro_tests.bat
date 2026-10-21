@echo off
setlocal
call "%~dp0..\MSXgl\tools\build\Node\node.exe" "%~dp0test_msx2_intro.js"
if errorlevel 1 exit /b 1
set "LOG=%~dp0..\projects\msx2\out\intro-test.log"
if not exist "%~dp0..\projects\msx2\emul\dsk\DOS2_quentin2.dsk" (
	echo Compile projects\msx2 com build.bat antes de executar este teste.
	exit /b 1
)
if exist "%LOG%" del "%LOG%"
call "%~dp0..\projects\msx2\run.bat" -script "%~dp0capture_msx2_intro.tcl"
if errorlevel 1 exit /b 1
if not exist "%LOG%" exit /b 1
type "%LOG%"
findstr /x /c:"PASS: MSX2 intro" "%LOG%" >nul
exit /b %ERRORLEVEL%

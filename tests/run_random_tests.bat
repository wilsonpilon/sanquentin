@echo off
setlocal
set "TEST_EXE=%TEMP%\sanquentin_test_random.exe"
gcc -std=c11 -Wall -Wextra -Werror "%~dp0test_random.c" "%~dp0..\src\sq_random.c" -o "%TEST_EXE%"
if errorlevel 1 exit /b %errorlevel%
"%TEST_EXE%"
set "RESULT=%ERRORLEVEL%"
del "%TEST_EXE%" >nul 2>nul
exit /b %RESULT%

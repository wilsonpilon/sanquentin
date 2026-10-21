@echo off
setlocal
node "%~dp0run_differential.js" %*
exit /b %ERRORLEVEL%

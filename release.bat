@echo off
setlocal
"%~dp0MSXgl\tools\build\Node\node.exe" "%~dp0tools\release.js" %*
exit /b %ERRORLEVEL%

@echo off
rem Rebuild both disks from the existing pair of COM files, without compiling.
setlocal
"%~dp0..\..\MSXgl\tools\build\Node\node.exe" "%~dp0..\..\tools\disks.js"
exit /b %ERRORLEVEL%

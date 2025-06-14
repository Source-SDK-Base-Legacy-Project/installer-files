@echo off
setlocal enableextensions enabledelayedexpansion
prompt $

call build.bat win-x64
call build.bat win-x86

endlocal
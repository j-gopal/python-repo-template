@echo off

call "%~dp0_venv/Scripts/activate.bat"

set "_MY_OLD_PATH=%PATH%"
set "PATH=%~dp0_scripts;%PATH%"


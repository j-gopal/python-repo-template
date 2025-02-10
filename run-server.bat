@echo off

setlocal EnableDelayedExpansion

:: Get project dir without trailing slash
set "PROJECT_DIR=%~dp0"
set "PROJECT_DIR=!PROJECT_DIR:~0,-1!"

call "%PROJECT_DIR%\activate.bat"
python "%PROJECT_DIR%\your_app_name.py" 
call "%PROJECT_DIR%\_scripts\deactivate.bat"

:: Pause to let user read output
timeout.exe -1

endlocal

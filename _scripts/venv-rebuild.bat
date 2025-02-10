@echo off

setlocal EnableDelayedExpansion

set "PROJECT_DIR=%~dp0.."
set "COLLEGE_DIR=C:\Users\%USERNAME%\Documents\College"

cd "%PROJECT_DIR%"
if exist _venv (
    echo Removing existing _venv dir...
    rm -r _venv
)

echo Creating clean _venv dir...
python.exe -m venv _venv

echo Installing reqs. from requirements.txt...
call "%PROJECT_DIR%\activate.bat"
"_venv\Scripts\python.exe" -m pip install -r requirements.txt
call "%PROJECT_DIR%\_scripts\deactivate.bat"

:: Pause to let user read output
timeout.exe -1

endlocal

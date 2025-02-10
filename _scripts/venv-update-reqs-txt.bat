@echo off

setlocal EnableDelayedExpansion

set "PROJECT_DIR=%~dp0.."

call "%PROJECT_DIR%\activate.bat"
"_venv\Scripts\python.exe" -m pip freeze > "%PROJECT_DIR%\requirements.txt"
call "%PROJECT_DIR%\_scripts\deactivate.bat"

:: Pause to let user read output
timeout.exe -1

endlocal

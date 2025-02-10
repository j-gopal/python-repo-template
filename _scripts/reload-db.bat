
@echo off

set "PROJECT_DIR=%~dp0.."
set "ORIGINAL_CWD=%CD%"

cd %~dp0

rm ..\.local\instance\your_app_name.db
sqlite3 ..\.local\instance\your_app_name.db < sql\create_db_schema.sql
sqlite3 ..\.local\instance\your_app_name.db < sql\insert_all_data.sql

echo.
echo reload_db_schema_and_data.sql has been run (check for any errors above).

:: Pause to let user read output
timeout.exe -1

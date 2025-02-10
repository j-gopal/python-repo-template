
@echo off

set "ORIGINAL_CWD=%CD%"

set "actual_app_name=%~1"
set "new_project_dir=%~2"

if "%actual_app_name%"=="" (
    echo Error: Missing ^<actual_app_name^>
    echo Usage: create_new_project.bat ^<actual_app_name^> ^<new_project_dir^>
    exit /b 1
)

if "%new_project_dir%"=="" (
    echo Error: Missing ^<new_project_dir^>
    echo Usage: create_new_project.bat ^<actual_app_name^> ^<new_project_dir^>
    exit /b 1
)

set "repo_template_dir=%~dp0"
set "repo_template_dir=%repo_template_dir:~0,-1%"

cp -r "%repo_template_dir%" "%new_project_dir%"
rm "%new_project_dir%\create_new_project.bat"

cd "%new_project_dir%"

C:\msys64\usr\bin\find.exe . -type f -exec sed -i "s/your_app_name/%actual_app_name%/g" {} +

mv your_app_name.py "%actual_app_name%.py"
mv your_app_name    "%actual_app_name%"

cd "%ORIGINAL_CWD%"

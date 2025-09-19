@echo off
echo init
setlocal
set "BASE_DIR=%~dp0"
set "TMP_DIR=%BASE_DIR%venvForVELA"
set "ACTIVATE_PATH=%~dp0Scripts\activate.bat"
cls

echo.
echo VELA Browser Development Kit
echo.

echo Your Python Version:
python -V
echo.

if exist "Scripts/activate.bat" (
echo venv is exist
echo Activating venv...
start "" cmd /k "%ACTIVATE_PATH%"
exit /b

) else (
echo venv is not exist
echo Creating venv...
python -m venv venvForVELA
xcopy "%TMP_DIR%\*" "%BASE_DIR%" /E /H /Y
rmdir /S /Q "%TMP_DIR%"
echo Restarting...
call setup.bat
)
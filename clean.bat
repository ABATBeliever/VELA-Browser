@echo off
echo init
setlocal
set "BASE_DIR=%~dp0"
set "SCRIPTS_DIR=%BASE_DIR%Scripts"
set "LIB_DIR=%BASE_DIR%LIB"
set "INCLUDE_DIR=%BASE_DIR%Include"
cls

echo.
echo VELA Browser Development Kit
echo.

echo Cleaning venv
echo.

del /f .gitignore
del /f pyvenv.cfg
rmdir /S /Q "%SCRIPTS_DIR%"
rmdir /S /Q "%LIB_DIR%"
rmdir /S /Q "%INCLUDE_DIR%"

echo Done.
exit /b
@echo off
echo init
setlocal
set "BASE_DIR=%~dp0"
cls

echo.
echo VELA Browser Development Kit
echo.

echo Cleaning venv
echo.

del /f .gitignore
del /f pyvenv.cfg
del /f settings.ini
del /f error.log
del /f Software.spec
del /f README.TXT
del /f README.md
del /f LICENSE.txt
rmdir /S /Q "%BASE_DIR%LIB"
rmdir /S /Q "%BASE_DIR%data"
rmdir /S /Q "%BASE_DIR%build"
rmdir /S /Q "%BASE_DIR%Include"
rmdir /S /Q "%BASE_DIR%Scripts"
rmdir /S /Q "%BASE_DIR%Software.dist"
rmdir /S /Q "%BASE_DIR%Software.build"
rmdir /S /Q "%BASE_DIR%Software.onefile-build"

echo Done.
exit /b
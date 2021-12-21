@echo off
set version=1.0
title Python Typer Installer v%version%
SETLOCAL ENABLEDELAYEDEXPANSION
echo **** Requirements ****
echo 1. Confirm you are running this as administrator
echo **********************
echo.
echo Once you have confirmed requirements met above...
echo --Press any key to continue--
pause >nul
CLS

mkdir "C:\Program Files\Python_Typer"
mkdir "C:\Program Files\Python_Typer\assets"
icacls "C:\Program Files\Python_Typer" /grant Everyone:M
icacls "C:\Program Files\Python_Typer\assets" /grant Everyone:M
echo Copying the files from unzipped folder to the installation directory
xcopy /y "%~dp0dist\*.*" "C:\Program Files\Python_Typer" >nul
xcopy /y "%~dp0assets\*.*" "C:\Program Files\Python_Typer\assets" >nul
echo Copying of the files to the installation directory completed
::echo Caching install files locally
::start "C:\Windows\System32\cmd.exe" /c "%~dp0installs\python-3.10.0-amd64.exe /layout %~dp0installs"
::echo Caching install files completed

echo Copying the shortcut to the Taskbar of the User %USERNAME%
xcopy /y "%~dp0assets\Password Typer.lnk" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" >nul
xcopy /y "%~dp0assets\Password Typer.lnk" "%USERPROFILE%\Desktop" >nul
echo Copying the shortcut to the Taskbar of %USERNAME% completed.
echo Copying the shortcut to the Desktop of the User %USERNAME%
echo Copying the shortcut to the Desktop of %USERNAME% completed.
echo installer completed
pause
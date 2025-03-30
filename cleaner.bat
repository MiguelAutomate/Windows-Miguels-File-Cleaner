@echo off
cls
title Miguel's File Cleaner (Updated for Windows 11)

:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as an administrator.
    pause
    exit
)

:: Define log file
set LogFile=%~dp0FileCleaner.log

:: User confirmation
echo This script will clean temporary files and free up disk space.
set /p UserInput=Do you want to proceed? (Y/N): 
if /i not "%UserInput%"=="Y" exit

echo Cleaning temporary files...

:: Function to delete files and directories
:CleanDir
if exist "%~1" (
    echo Cleaning %~1... >> "%LogFile%"
    del /s /f /q "%~1\*.*" >> "%LogFile%" 2>&1
    for /d %%i in ("%~1\*") do rd /s /q "%%i" >> "%LogFile%" 2>&1
) else (
    echo Directory %~1 does not exist. Skipping... >> "%LogFile%"
)
goto :eof

:: Clean Windows Temp folder
call :CleanDir "C:\Windows\Temp"

:: Clean user Temp folder
call :CleanDir "%TEMP%"

:: Clean Prefetch folder
call :CleanDir "C:\Windows\Prefetch"

:: Clean Internet Explorer temporary files (if applicable)
call :CleanDir "%LOCALAPPDATA%\Microsoft\Windows\INetCache"

:: Clean Edge temporary files
call :CleanDir "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache"

:: Clean recent files
call :CleanDir "%APPDATA%\Microsoft\Windows\Recent"

:: Clean Windows Update cache
call :CleanDir "C:\Windows\SoftwareDistribution\Download"

:: Clean system error memory dump files
call :CleanDir "C:\Windows\Minidump"

:: Empty Recycle Bin
echo Emptying Recycle Bin...
PowerShell.exe -NoProfile -Command "Clear-RecycleBin -Confirm:$false" >> "%LogFile%" 2>&1

echo.
echo All specified temporary files have been cleaned.
echo Log file created at %LogFile%
echo.
pause
exit

@echo off
setlocal

REM ==== CONFIGURATION ====
set "GITHUB_USER=jeff-ackermann"
set "REPO_NAME=EC201"
REM ========================

if "%~x1"=="" (
    echo Drag and drop an .html file onto this script.
    pause
    exit /b
)

set "FILENAME=%~nx1"
set "LIVE_URL=https://%GITHUB_USER%.github.io/%REPO_NAME%/%FILENAME%"

REM Show it
echo.
echo Your GitHub Pages link:
echo %LIVE_URL%
echo.

REM Copy to clipboard
echo %LIVE_URL% | clip
echo (Copied to clipboard.)

pause

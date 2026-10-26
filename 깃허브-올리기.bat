@echo off
rem fun-zone -> GitHub (engine: ..\develop\tools\github-upload.ps1). Check, commit, push, keep Pages on.
cd /d "%~dp0"
if not exist "%~dp0..\develop\tools\github-upload.ps1" (
  echo.
  echo   Upload engine not found: ..\develop\tools\github-upload.ps1
  echo   Put the develop repository next to this folder: https://github.com/ljo0527/develop
  echo.
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0..\develop\tools\github-upload.ps1" -Repo "%~dp0." -Commit -Pages %*

@echo off
setlocal
cd /d %~dp0

if not exist GreenLogAudit.exe (
  echo [ERROR] GreenLogAudit.exe not found.
  pause
  exit /b 1
)

GreenLogAudit.exe -stop-service
GreenLogAudit.exe -uninstall-service -config "%~dp0config.yaml"
if errorlevel 1 (
  echo [ERROR] uninstall service failed.
  pause
  exit /b 1
)

echo [OK] service uninstalled.
pause
exit /b 0

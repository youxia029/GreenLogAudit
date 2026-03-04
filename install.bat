@echo off
setlocal
cd /d %~dp0

if not exist GreenLogAudit.exe (
  echo [ERROR] GreenLogAudit.exe not found.
  pause
  exit /b 1
)

GreenLogAudit.exe -install-service -config "%~dp0config.yaml"
if errorlevel 1 (
  echo [ERROR] install service failed.
  pause
  exit /b 1
)

GreenLogAudit.exe -start-service
if errorlevel 1 (
  echo [WARN] service installed but start failed, please check Services.msc.
  pause
  exit /b 1
)

echo [OK] service installed and started.
pause
exit /b 0

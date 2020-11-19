@echo off
REM
If EXIST c:\windows\ltsvc\ltsvc.exe GOTO EXIT
GOTO INSTALL

:INSTALL
mkdir C:\KITS_AGENT
cd C:\KITS_AGENT && curl -LJO https://github.com/keepitsimple-dev/CW-Agent-Deploy/raw/main/Agent_Install.exe
call C:\KITS_AGENT\Agent_Install.exe /s
del /F /Q C:\KITS_AGENT
rmdir /Q /S C:\KITS_AGENT

GOTO EXIT

:EXIT
Exit

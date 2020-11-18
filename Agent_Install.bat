@echo off
REM
If EXIST c:\windows\ltsvc\ltsvc.exe GOTO EXIT
GOTO INSTALL

:INSTALL
mkdir C:\AGENTSHARE
cd C:\AGENTSHARE && curl -LJO https://github.com/keepitsimple-dev/CW-Agent-Deploy/raw/main/Agent_Install.exe
call C:\AGENTSHARE\Agent_Install.exe /s

GOTO EXIT

:EXIT
Exit

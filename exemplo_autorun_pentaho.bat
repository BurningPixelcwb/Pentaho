echo off
mode con cols=62 lines=22
setlocal enabledelayedexpansion
TITLE Realiza a previsao de disparos
	
SET currentdir=%~dp0
SET kitchen=C:\Users\diego.richalski\Documents\data-integration\kitchen.bat
SET logfile="%currentdir%log.txt"

for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
set data=%year%-%month%-%day%

echo. >> %logfile%
echo. >> %logfile%

"%kitchen%" /file:"%currentdir%test-job.kjb" /level:Basic "/param:day=%data%" >> %logfile%
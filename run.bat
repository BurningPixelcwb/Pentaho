echo off
mode con cols=62 lines=22
setlocal enabledelayedexpansion
TITLE MeuProcessoAutomatico
SET currentdir=%~dp0
SET kitchen=C:\Users\diego.richalski\Documents\data-integration\kitchen.bat
SET logfile="%currentdir%log.txt"

echo. >> %logfile%
echo. >> %logfile%

"%kitchen%" /file:"%currentdir%lorem.kjb" /level:Basic >> %logfile% /param: getdfate
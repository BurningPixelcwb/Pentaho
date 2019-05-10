echo off
mode con cols=62 lines=22
setlocal enabledelayedexpansion
TITLE Mostra a data vigente

for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
set datestr=%year%-%month%-%day%
echo datestr is %datestr%

pause
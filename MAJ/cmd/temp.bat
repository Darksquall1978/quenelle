@echo off
cd..
cd..

robocopy BepInEx\conf-temp BepInEx\config /xo

cd maj/cmd
start modif.bat /MIN /B

@echo off
::pause
exit

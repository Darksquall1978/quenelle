Color 0c & Mode con cols=25 lines=2

@echo off
git pull
::timeout /t 3 /nobreak > nul

::RMDIR /s /q quenelle
::@echo Suppression ok...
@echo off

::timeout /t 3 /nobreak > nul

@echo Reparation en cours...
timeout /t 3 /nobreak > nul
reparation.bat 
exit
.



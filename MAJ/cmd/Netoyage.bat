@echo off
Color 0A & Mode con cols=120 lines=100
cd..
cd..
dir
pause
@echo  suppression du dossier plugins
@echo off
RMDIR /s /q bepinex\plugins
pause
::timeout /t 1 /nobreak > nul

@echo  suppression du dossier config
@echo off
RMDIR /s /q bepinex\config
pause
MAJ/cmd/reparation.bat

exit

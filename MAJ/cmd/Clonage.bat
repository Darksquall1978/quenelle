@echo off
RMDIR /s /q maj\cmd\quenelle
@echo off
@echo Clonage en cours....
@echo off
Color 0A & Mode con cols=120 lines=100
git clone https://github.com/Darksquall1978/quenelle.git 
@echo Clonage terminer....
@echo off
timeout /t 1 /nobreak > nul
@echo Reparation en cours....
@echo off
timeout /t 1 /nobreak > nul
reparation.bat
exit


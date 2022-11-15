@echo off
@echo Clonage en cours....
@echo off
Color 0A & Mode con cols=120 lines=100
git clone https://github.com/Darksquall1978/quenelle.git 

@echo reparation en cours....
@echo off
timeout /t 1 /nobreak > nul
reparation.bat
exit


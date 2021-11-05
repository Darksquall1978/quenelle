@echo off
Color 0A & Mode con cols=40 lines=2
@echo Suppression des fichiers obsoletes...
@echo off
timeout /t 3 /nobreak > nul
Color 0A & Mode con cols=27 lines=2
@echo Suppression terminer
@echo off
timeout /t 3 /nobreak > nul
cd..
cd..
Color 0b & Mode con cols=25 lines=2
@echo Demarrage launcher ok
Launcher.exe
exit


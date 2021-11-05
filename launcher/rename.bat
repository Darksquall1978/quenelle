Title Installation MAJ
Color 0A & Mode con cols=15 lines=2
echo chargement
@echo off
timeout /t 4 /nobreak > nul
echo chargement
@echo off

echo chargement.
@echo off
cd

echo chargement..
@echo off

del maj.bat
echo chargement...
@echo off
timeout /t 1 /nobreak > nul

@echo off
timeout /t 1 /nobreak > nul

@echo off
timeout /t 1 /nobreak > nul

@echo off
rename maj.txt maj.bat
echo chargement OK

@echo off
timeout /t 2 /nobreak > nul
rename maj2.txt maj.bat
timeout /t 2 /nobreak > nul

echo Redemarrage 
timeout /t 2 /nobreak > nul
@echo off
cd ..

@echo off
start launcher.exe

@echo off
exit
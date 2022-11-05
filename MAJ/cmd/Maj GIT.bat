@echo off
Color 0e & Mode con cols=100 lines=40

::git remote add valheim git://github.com/Darksquall1978/quenelle.git



::git fetch valheim

::git fetch

git pull

::@echo Mise a jour OK
timeout /t 3 /nobreak > nul

::RMDIR /s /q quenelle

modif.bat

cd..
cd..
::RMDIR /s /q Git

::Launcher.exe
exit



@echo off
Color 0e & Mode con cols=100 lines=40

::git remote add valheim git://github.com/Darksquall1978/quenelle.git
::git fetch valheim
::git fetch

git pull

timeout /t 1 /nobreak > nul

::RMDIR /s /q quenelle

start temp.bat

::start modif.bat

cd..
cd..

exit



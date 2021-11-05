@Echo off
mode con cols=25 lines=2
Title Steam
Color 0a
@echo Demarrage de Steam...
@Echo off

start steam://
timeout /t 6 /nobreak > nul
@echo Demarrage de Steam OK
timeout /t 3 /nobreak > nul

exit
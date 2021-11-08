@Echo off
mode con cols=25 lines=2
Title Steam
Color 0a
@echo Demarrage de Steam...
@Echo off

tasklist /fi "ImageName eq steam.exe" /fo csv 2>NUL | find /I "steam.exe">NUL
:: Steam is running
if "%ERRORLEVEL%"=="0" goto MENU
start /min steam://
timeout /t 6 /nobreak > nul
@echo Demarrage de Steam OK
timeout /t 3 /nobreak > nul

exit

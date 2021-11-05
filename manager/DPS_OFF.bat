Echo off
mode con cols=26 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'DPS ON', 'DPS OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'DPS_OFF', 'DPS_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\DPS.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    DPS OFF

timeout /t 3 /nobreak > nul
exit
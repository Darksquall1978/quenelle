Echo off
mode con cols=26 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'DPS OFF', 'DPS ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'DPS_ON', 'DPS_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\DPS.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    DPS ON

timeout /t 3 /nobreak > nul
exit
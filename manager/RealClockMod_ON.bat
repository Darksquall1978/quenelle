Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'Real Clock Mod OFF', 'Real Clock Mod ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'RealClockMod_ON', 'RealClockMod_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\RealClockMod.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Vehicle Map Marker ON

timeout /t 3 /nobreak > nul
exit
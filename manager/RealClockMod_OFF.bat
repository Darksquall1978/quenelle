Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'Real Clock Mod ON', 'Real Clock Mod OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'RealClockMod_OFF', 'RealClockMod_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\RealClockMod.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Vehicle Map Marker OFF

timeout /t 3 /nobreak > nul
exit
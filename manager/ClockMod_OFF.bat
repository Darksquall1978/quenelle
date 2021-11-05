Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'Clock Mod ON', 'Clock Mod OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'ClockMod_OFF', 'ClockMod_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\ClockMod.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Clock Mod OFF

timeout /t 3 /nobreak > nul
exit
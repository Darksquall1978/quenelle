Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'Clock Mod OFF', 'Clock Mod ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'ClockMod_ON', 'ClockMod_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\ClockMod.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Clock Mod ON

timeout /t 3 /nobreak > nul
exit
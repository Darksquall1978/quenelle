Echo off
mode con cols=31 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'Combat Targeting System ON', 'Combat Targeting System OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'CombatTargetingSystem_OFF', 'CombatTargetingSystem_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\CombatTargetingSystem.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Combat Targeting System OFF

timeout /t 3 /nobreak > nul
exit
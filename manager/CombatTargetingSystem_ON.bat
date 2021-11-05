Echo off
mode con cols=31 lines=3
Title Gestion des Mods
:Loop
Color 0a
powershell -Command "(gc manager.bat) -replace 'Combat Targeting System OFF', 'Combat Targeting System ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'CombatTargetingSystem_ON', 'CombatTargetingSystem_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\CombatTargetingSystem.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Combat Targeting System ON

timeout /t 3 /nobreak > nul
exit
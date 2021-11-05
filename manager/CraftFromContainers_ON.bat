Echo off
mode con cols=31 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'Craft From Containers OFF', 'Craft From Containers ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'CraftFromContainers_ON', 'CraftFromContainers_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\CraftFromContainers.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Craft From Containers ON

timeout /t 3 /nobreak > nul
exit
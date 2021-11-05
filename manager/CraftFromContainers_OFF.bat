Echo off
mode con cols=31 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'Craft From Containers ON', 'Craft From Containers OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'CraftFromContainers_OFF', 'CraftFromContainers_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\CraftFromContainers.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Craft From Containers OFF

timeout /t 3 /nobreak > nul
exit
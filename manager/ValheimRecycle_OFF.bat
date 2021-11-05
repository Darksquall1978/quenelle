Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'Valheim Recycle ON', 'Valheim Recycle OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'ValheimRecycle_OFF', 'ValheimRecycle_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\ValheimRecycle.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Valheim Recycle OFF

timeout /t 3 /nobreak > nul
exit
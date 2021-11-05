Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'Valheim Recycle OFF', 'Valheim Recycle ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'ValheimRecycle_ON', 'ValheimRecycle_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\ValheimRecycle.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Valheim Recycle ON

timeout /t 3 /nobreak > nul
exit
Echo off
mode con cols=26 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'Back pack Redux ON', 'Back pack Redux OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'BackpackRedux_OFF', 'BackpackRedux_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\BackpackRedux.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Back pack Redux OFF

timeout /t 3 /nobreak > nul
exit
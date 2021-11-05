Echo off
mode con cols=26 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'Back pack Redux OFF', 'Back pack Redux ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'BackpackRedux_ON', 'BackpackRedux_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\BackpackRedux.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Back pack Redux ON

timeout /t 3 /nobreak > nul
exit
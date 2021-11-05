Echo off
mode con cols=36 lines=3
Title Gestion des Mods
:Loop
Color 0a
powershell -Command "(gc manager2.bat) -replace 'ValheimDisplayBepInExInfo OFF', 'ValheimDisplayBepInExInfo ON' | Out-File -encoding ASCII manager2.bat"
powershell -Command "(gc manager2.bat) -replace 'Valheim.DisplayBepInExInfo_ON', 'Valheim.DisplayBepInExInfo_OFF' | Out-File -encoding ASCII manager2.bat"
start refresh2.bat
cd ..
CLS
move /y BepInEx\plugins-off\Valheim.DisplayBepInExInfo.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Valheim Display BepInEx Info ON

timeout /t 3 /nobreak > nul
exit
Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'CharacterEdit OFF', 'CharacterEdit ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'CharacterEdit_ON', 'CharacterEdit_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\CharacterEdit.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    CharacterEdit ON

timeout /t 3 /nobreak > nul
exit



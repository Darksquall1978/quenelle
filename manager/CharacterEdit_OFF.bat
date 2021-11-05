Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'CharacterEdit ON', 'CharacterEdit OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'CharacterEdit_OFF', 'CharacterEdit_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..

move /y BepInEx\plugins\CharacterEdit.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    CharacterEdit OFF

timeout /t 3 /nobreak > nul
exit






Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'Quest Framework ON', 'Quest Framework OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'QuestFramework_OFF', 'QuestFramework_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\QuestFramework.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Quest Framework OFF

timeout /t 3 /nobreak > nul
exit
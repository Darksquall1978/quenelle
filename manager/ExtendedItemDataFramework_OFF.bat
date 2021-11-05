Echo off
mode con cols=36 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager2.bat) -replace 'ExtendedItemDataFramework ON', 'ExtendedItemDataFramework OFF' | Out-File -encoding ASCII manager2.bat"
powershell -Command "(gc manager2.bat) -replace 'ExtendedItemDataFramework_OFF', 'ExtendedItemDataFramework_ON' | Out-File -encoding ASCII manager2.bat"
start refresh2.bat
cd ..
CLS
move /y BepInEx\plugins\ExtendedItemDataFramework.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    ExtendedItemDataFramework OFF

timeout /t 3 /nobreak > nul
exit
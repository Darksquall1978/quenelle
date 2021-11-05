Echo off
mode con cols=36 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager2.bat) -replace 'ExtendedItemDataFramework OFF', 'ExtendedItemDataFramework ON' | Out-File -encoding ASCII manager2.bat"
powershell -Command "(gc manager2.bat) -replace 'ExtendedItemDataFramework_ON', 'ExtendedItemDataFramework_OFF' | Out-File -encoding ASCII manager2.bat"
start refresh2.bat
cd ..
CLS
move /y BepInEx\plugins-off\ExtendedItemDataFramework.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    ExtendedItemDataFramework ON

timeout /t 3 /nobreak > nul
exit
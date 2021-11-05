Echo off
mode con cols=31 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager2.bat) -replace 'Configuration Manager OFF', 'Configuration Manager ON' | Out-File -encoding ASCII manager2.bat"
powershell -Command "(gc manager2.bat) -replace 'ConfigurationManager_ON', 'ConfigurationManager_OFF' | Out-File -encoding ASCII manager2.bat"
start refresh2.bat
cd ..
CLS
move /y BepInEx\plugins-off\ConfigurationManager.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Configuration Manager ON

timeout /t 3 /nobreak > nul
exit
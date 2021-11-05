Echo off
mode con cols=33 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager2.bat) -replace 'Configuration Manager ON', 'Configuration Manager OFF' | Out-File -encoding ASCII manager2.bat"
powershell -Command "(gc manager2.bat) -replace 'ConfigurationManager_OFF', 'ConfigurationManager_ON' | Out-File -encoding ASCII manager2.bat"
start refresh2.bat
cd ..
CLS
move /y BepInEx\plugins\ConfigurationManager.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Configuration Manager OFF

timeout /t 3 /nobreak > nul
exit
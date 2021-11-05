Echo off
mode con cols=25 lines=3
Title Gestion des Mods
:Loop
Color 0A
powershell -Command "(gc manager.bat) -replace 'VehicleMapMarker OFF', 'VehicleMapMarker ON' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'vehiclemarker_ON', 'vehiclemarker_OFF' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins-off\vehicle_map_marker.dll BepInEx\plugins\ 

echo:
echo:
echo:
Echo    Vehicle Map Marker ON

timeout /t 3 /nobreak > nul
exit
Echo off
mode con cols=26 lines=3
Title Gestion des Mods
:Loop
Color 0C
powershell -Command "(gc manager.bat) -replace 'VehicleMapMarker ON', 'VehicleMapMarker OFF' | Out-File -encoding ASCII manager.bat"
powershell -Command "(gc manager.bat) -replace 'Vehiclemarker_OFF', 'Vehiclemarker_ON' | Out-File -encoding ASCII manager.bat"
start refresh.bat
cd ..
CLS
move /y BepInEx\plugins\vehicle_map_marker.dll BepInEx\plugins-off\ 

echo:
echo:
echo:
Echo    Vehicle Map Marker OFF

timeout /t 3 /nobreak > nul
exit
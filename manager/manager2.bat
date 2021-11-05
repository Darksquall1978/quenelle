Echo off
Mode 51,53
Title Gestion des Mods 2

Batbox /h 0

Echo: Mod Manager v1.0       page 2      Par Darksquall
Echo:          -------------------------------
Echo           Liste des Mods pour ValheimPlus
Echo:          -------------------------------
:Loop
Color 1f

Call Button 10 4  "ValheimDisplayBepInExInfo ON" 10 7 "  Configuration Manager ON " 10 10 "ExtendedItemDataFramework OFF" 20 50 "Page 1" # Press

Getinput /m %Press% /h 90

if %errorlevel%==1  start Valheim.DisplayBepInExInfo_OFF.bat
if %errorlevel%==2  start ConfigurationManager_OFF.bat
if %errorlevel%==3  start ExtendedItemDataFramework_ON.bat
if %errorlevel%==4  start manager.bat
if %errorlevel%==5  start 
if %errorlevel%==6  start 
if %errorlevel%==7  start 
if %errorlevel%==8  start 
if %errorlevel%==9  start 
if %errorlevel%==10 start 
exit 
if %errorlevel%==11
exit
if %errorlevel%== 




goto Loop





















































































































































































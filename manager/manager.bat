Echo off
Mode 51,53
Title Gestion des Mods

Batbox /h 0

Echo: Mod Manager v1.0       page 1      Par Darksquall
Echo:          -------------------------------
Echo           Liste des Mods pour ValheimPlus
Echo:          -------------------------------
:Loop
Color 1f

Call Button 10 4  "    CharacterEdit ON       " 10 7 "   VehicleMapMarker ON     " 10 10 "     Real Clock Mod ON     " 10 13 "    Quest Framework ON     " 10 16 "     Valheim Recycle ON    " 10 19 "       Clock Mod ON        " 10 22 "          DPS ON           " 10 25 "Combat Targeting System ON " 10 28 " Craft From Containers ON  "  10 31 "     Back pack Redux ON    " 10 34 "vide11" 10 37 "vide12" 10 40 "vide13"  10 43 "vide14" 20 50 "Page 2" # Press

Getinput /m %Press% /h 9a

if %errorlevel%==1  start CharacterEdit_OFF.bat
if %errorlevel%==2  start vehiclemarker_OFF.bat
if %errorlevel%==3  start RealClockMod_OFF.bat
if %errorlevel%==4  start QuestFramework_OFF.bat
if %errorlevel%==5  start ValheimRecycle_OFF.bat
if %errorlevel%==6  start ClockMod_OFF.bat
if %errorlevel%==7  start DPS_OFF.bat
if %errorlevel%==8  start CombatTargetingSystem_OFF.bat
if %errorlevel%==9  start CraftFromContainers_OFF.bat
if %errorlevel%==10 start BackpackRedux_OFF.bat
if %errorlevel%==11 start exit
if %errorlevel%==12 start exit
if %errorlevel%==13 start exit
if %errorlevel%==14 start exit
if %errorlevel%==15 start manager2.bat
exit
if %errorlevel%== 




goto Loop





















































































































































































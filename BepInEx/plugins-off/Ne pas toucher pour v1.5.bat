@echo off
Color 0A & Mode con cols=120 lines=100

cd..
cd plugins
::dir
::pause
@echo  suppression du fichier ConfigurationManager.xml
del ConfigurationManager.xml
@echo  suppression du fichier FloatingItems.dll
del FloatingItems.dll
@echo  suppression du fichier manifest.json
del manifest.json
@echo  suppression du fichier CW_Jesse.BetterNetworking.dll
del CW_Jesse.BetterNetworking.dll
@echo  suppression du fichier DeathTweaks.dll
del DeathTweaks.dll
@echo  suppression du fichier ExtendedItemDataFramework.dll
del ExtendedItemDataFramework.dll
@echo  suppression du fichier Jotunn.dll
del Jotunn.dll
exit
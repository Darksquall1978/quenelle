@echo off
Color 0A & Mode con cols=120 lines=100
git clone https://github.com/Darksquall1978/quenelle.git 

cd..
cd..
@echo off
RMDIR /s /q .git
RMDIR /s /q bepinex\cache
RMDIR /s /q bepinex\core
RMDIR /s /q bepinex\patchers
::RMDIR /s /q bepinex\plugins
::RMDIR /s /q bepinex\plugins-off
timeout /t 2 /nobreak > nul


@echo off
robocopy maj\cmd\quenelle\.git .git /mt /z /e 
robocopy maj\cmd\quenelle\bepinex\cache BepInEx\cache
robocopy maj\cmd\quenelle\bepinex\core BepInEx\core
robocopy maj\cmd\quenelle\bepinex\patchers BepInEx\patchers
robocopy maj\cmd\quenelle\bepinex\plugins BepInEx\plugins
robocopy maj\cmd\quenelle\bepinex\plugins-off BepInEx\plugins-off
copy maj\cmd\quenelle\maj\cmd\clone.bat maj\cmd\clone.bat
copy maj\cmd\quenelle\maj\cmd\modif.bat maj\cmd\modif.bat
copy maj\cmd\quenelle\maj\cmd\reparer.bat maj\cmd\reparer.bat
copy maj\cmd\quenelle\maj\cmd\reparerfin.bat maj\cmd\reparerfin.bat

@echo off
RMDIR /s /q maj\cmd\quenelle 

start maj\cmd\reparerfin.bat

exit
.


@echo off ---------------------------temp---------------------------
::robocopy maj\cmd\valheim\doorstop_libs doorstop_libs /mt /z /e 
::robocopy maj\cmd\valheim\launcher launcher /mt /z /e 
::robocopy maj\cmd\valheim\manager manager /mt /z /e 
::robocopy maj\cmd\valheim\unstripped_corlib unstripped_corlib /mt /z /e 
::robocopy maj\cmd\valheim\vplus-data vplus-data /mt /z /e 
::robocopy maj\cmd\valheim\doorstop_config.ini doorstop_config.ini /mt /z /e 
::robocopy maj\cmd\valheim\Launcher.apm Launcher.apm /mt /z /e 
::robocopy maj\cmd\valheim\Launcher.exe Launcher.exe /mt /z /e 
::robocopy maj\cmd\valheim\winhttp_.dll winhttp_.dll /mt /z /e 
::move /y maj\cmd\valheim\doorstop_config.ini
::move /y maj\cmd\valheim\launcher.apm
::move /y maj\cmd\valheim\launcher.exe
::move /y maj\cmd\valheim\winhttp_.dll

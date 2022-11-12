@echo off
Color 0A & Mode con cols=120 lines=100
git clone https://github.com/Darksquall1978/quenelle.git 

cd..
cd..
@echo off
@echo  suppression du .git
RMDIR /s /q .git
timeout /t 1 /nobreak > nul
@echo  suppression du dossier cache
RMDIR /s /q bepinex\cache
timeout /t 1 /nobreak > nul
@echo  suppression du dossier core
RMDIR /s /q bepinex\core
timeout /t 1 /nobreak > nul
@echo  suppression du dossier patchers
RMDIR /s /q bepinex\patchers
timeout /t 1 /nobreak > nul
@echo  suppression du dossier plugins
RMDIR /s /q bepinex\plugins
timeout /t 1 /nobreak > nul
@echo  suppression du dossier config
RMDIR /s /q bepinex\config
timeout /t 1 /nobreak > nul
@echo  suppression du dossier plugins-off
RMDIR /s /q bepinex\plugins-off
timeout /t 1 /nobreak > nul
@echo  suppression du dossier doorstop_libs
RMDIR /s /q doorstop_libs
timeout /t 1 /nobreak > nul
@echo  suppression du dossier launcher
RMDIR /s /q launcher
timeout /t 1 /nobreak > nul
@echo  suppression du dossier unstripped_corlib
RMDIR /s /q unstripped_corlib
timeout /t 1 /nobreak > nul
@echo  suppression du dossier vplus-data
RMDIR /s /q vplus-data
timeout /t 1 /nobreak > nul
::@echo  suppression du fichier doorstop_config.ini
::del /s /q doorstop_config.ini
::timeout /t 1 /nobreak > nul

@echo  clonage des fichiers source

timeout /t 2 /nobreak > nul



@echo off 
robocopy maj\cmd\quenelle\.git .git /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\core BepInEx\core
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\cache BepInEx\cache
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\patchers BepInEx\patchers
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\plugins BepInEx\plugins /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\config BepInEx\config
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\plugins-off BepInEx\plugins-off
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\doorstop_libs doorstop_libs /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\launcher launcher /mt /z /e 
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\unstripped_corlib unstripped_corlib /mt /z /e 
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\vplus-data vplus-data /mt /z /e 
timeout /t 1 /nobreak > nul
::ok
::pause
copy maj\cmd\quenelle\doorstop_config.ini doorstop_config.ini /y
timeout /t 1 /nobreak > nul
robocopy maj\cmd\quenelle\maj\cmd maj\cmd /mt /z /e 
timeout /t 1 /nobreak > nul


::---------------------------------------------------------------------

::robocopy maj\cmd\quenelle\manager manager /mt /z /e 
::timeout /t 1 /nobreak > nul



::robocopy maj\cmd\quenelle\Launcher.apm Launcher.apm 
::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\Launcher.exe Launcher.exe 
::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\winhttp_.dll winhttp_.dll 
::timeout /t 1 /nobreak > nul


::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\maj\cmd\modif.bat maj\cmd\modif.bat
::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\maj\cmd\reparer.bat maj\cmd\reparer.bat
::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\maj\cmd\reparerfin.bat maj\cmd\reparerfin.bat
::timeout /t 1 /nobreak > nul


@echo off
RMDIR /s /q maj\cmd\quenelle 

start maj\cmd\reparerfin.bat

exit



@echo off ---------------------------temp---------------------------
::robocopy maj\cmd\quenelle\doorstop_libs doorstop_libs /mt /z /e 
::robocopy maj\cmd\quenelle\launcher launcher /mt /z /e 
::robocopy maj\cmd\quenelle\manager manager /mt /z /e 
::robocopy maj\cmd\quenelle\unstripped_corlib unstripped_corlib /mt /z /e 
::robocopy maj\cmd\quenelle\vplus-data vplus-data /mt /z /e 
::robocopy maj\cmd\quenelle\doorstop_config.ini doorstop_config.ini /mt /z /e 
::robocopy maj\cmd\quenelle\Launcher.apm Launcher.apm /mt /z /e 
::robocopy maj\cmd\quenelle\Launcher.exe Launcher.exe /mt /z /e 
::robocopy maj\cmd\quenelle\winhttp_.dll winhttp_.dll /mt /z /e 
::move /y maj\cmd\valheim\doorstop_config.ini
::move /y maj\cmd\valheim\launcher.apm
::move /y maj\cmd\valheim\launcher.exe
::move /y maj\cmd\valheim\winhttp_.dll

::confirme

@echo off
Color 0A & Mode con cols=120 lines=100
git clone https://github.com/Darksquall1978/quenelle.git 



@echo off
@echo MAJ du --12/11/2022-- 14H30
timeout /t 2 /nobreak > nul
@echo  suppression du .git
RMDIR /s /q .git
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier cache
RMDIR /s /q bepinex\cache
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier core
RMDIR /s /q bepinex\core
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier patchers
RMDIR /s /q bepinex\patchers
::timeout /t 1 /nobreak > nul
::@echo  suppression du dossier plugins
::RMDIR /s /q bepinex\plugins
::timeout /t 1 /nobreak > nul
::@echo  suppression du dossier config
::RMDIR /s /q bepinex\config
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier plugins-off
RMDIR /s /q bepinex\plugins-off
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier doorstop_libs
RMDIR /s /q doorstop_libs
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier launcher
RMDIR /s /q launcher
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier unstripped_corlib
RMDIR /s /q unstripped_corlib
timeout /t 1 /nobreak > nul
@echo  suppression du dossier vplus-data
RMDIR /s /q vplus-data
timeout /t 1 /nobreak > nul



@echo  Copie des fichiers source

timeout /t 2 /nobreak > nul



@echo off 
robocopy quenelle\.git .git /mt /z /e
timeout /t 1 /nobreak > nul
dir
pause
robocopy quenelle\bepinex\core BepInEx\core /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\bepinex\cache BepInEx\cache /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\bepinex\patchers BepInEx\patchers /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
xcopy quenelle\bepinex\plugins BepInEx\plugins\ /y /r

timeout /t 1 /nobreak > nul
robocopy quenelle\bepinex\plugins BepInEx\plugins /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
pause
xcopy quenelle\bepinex\config BepInEx\config\ /y 
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\bepinex\plugins-off BepInEx\plugins-off /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\doorstop_libs doorstop_libs /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\launcher launcher /mt /z /e 
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\unstripped_corlib unstripped_corlib /mt /z /e 
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\vplus-data vplus-data /mt /z /e 
timeout /t 1 /nobreak > nul
::ok
::pause
xcopy quenelle\doorstop_config.ini doorstop_config.ini /y /f
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy quenelle\maj\cmd maj\cmd /mt /z /e 
timeout /t 1 /nobreak > nul
::ok
::pause
xcopy quenelle\Launcher.apm Launcher.apm /y
timeout /t 1 /nobreak > nul
::ok
::pause
xcopy quenelle\winhttp_.dll winhttp_.dll /y /f
timeout /t 1 /nobreak > nul
::ok
::pause
xcopy quenelle\Manager.apm Manager.apm /y
::timeout /t 1 /nobreak > nul
::ok
::pause
::xcopy quenelle\Manager.exe Manager.exe /y /f
::timeout /t 1 /nobreak > nul

pause

::RMDIR /s /q quenelle 

start Suppquenelle.bat
cd..
cd..
start launcher.exe

exit

::---------------------------------------------------------------------

::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\maj\cmd\modif.bat maj\cmd\modif.bat
::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\maj\cmd\reparer.bat maj\cmd\reparer.bat
::timeout /t 1 /nobreak > nul
::robocopy maj\cmd\quenelle\maj\cmd\reparerfin.bat maj\cmd\reparerfin.bat
::timeout /t 1 /nobreak > nul








@echo off ---------------------------temp---------------------------
::move /y maj\cmd\valheim\doorstop_config.ini
::move /y maj\cmd\valheim\launcher.apm
::move /y maj\cmd\valheim\launcher.exe
::move /y maj\cmd\valheim\winhttp_.dll

::confirme:

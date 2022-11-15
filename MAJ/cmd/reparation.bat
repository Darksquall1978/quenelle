@echo off
Color 0A & Mode con cols=120 lines=100
batbox /c 0X06 /d  
git clone https://github.com/Darksquall1978/quenelle.git 
batbox /c 0X02 /d 
cd..
cd..
@echo off

@echo MAJ du --16/11/2022-- 00H15

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
robocopy maj\cmd\quenelle\.git .git /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\core BepInEx\core /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\cache BepInEx\cache /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\patchers BepInEx\patchers /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause
xcopy maj\cmd\quenelle\bepinex\plugins BepInEx\plugins\ /y
::timeout /t 1 /nobreak > nul
robocopy maj\cmd\quenelle\bepinex\plugins BepInEx\plugins /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause
xcopy maj\cmd\quenelle\bepinex\config BepInEx\config\ /y
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\bepinex\plugins-off BepInEx\plugins-off /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\doorstop_libs doorstop_libs /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\launcher launcher /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\unstripped_corlib unstripped_corlib /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\vplus-data vplus-data /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause
xcopy maj\cmd\quenelle\doorstop_config.ini doorstop_config.ini /y
::timeout /t 1 /nobreak > nul
::ok
::pause
robocopy maj\cmd\quenelle\maj\cmd maj\cmd /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause
xcopy maj\cmd\quenelle\Launcher.apm Launcher.apm /y
timeout /t 1 /nobreak > nul
::ok
::pause
xcopy maj\cmd\quenelle\winhttp_.dll winhttp_.dll /y
timeout /t 1 /nobreak > nul
::ok
::pause
xcopy maj\cmd\quenelle\Manager.apm Manager.apm /y
::timeout /t 1 /nobreak > nul


@echo off
IF EXIST maj\cmd\quenelle RMDIR /s /q maj\cmd\quenelle

::start maj\cmd\reparerfin.bat

start launcher.exe
exit




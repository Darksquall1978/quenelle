@Echo off
mode con cols=38 lines=2
Title ValheimPlus-Vulkan
Color 0a
@echo Demarrage de ValheimPlus-Vulkan...
@Echo off

cd ..
rename winhttp_.dll winhttp.dll
timeout /t 2 /nobreak > nul
start steam://rungameid/892970-force-vulkan
timeout /t 4 /nobreak > nul
rename winhttp.dll winhttp_.dll




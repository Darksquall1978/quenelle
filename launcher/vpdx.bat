@Echo off
mode con cols=38 lines=2
Title ValheimPlus-DirectX
Color 0a
@echo Demarrage de ValheimPlus-DirectX...
@Echo off
cd ..
rename winhttp_.dll winhttp.dll
timeout /t 2 /nobreak > nul
start steam://rungameid/892970
timeout /t 2 /nobreak > nul
rename winhttp.dll winhttp_.dll
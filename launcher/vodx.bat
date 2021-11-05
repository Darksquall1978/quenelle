@Echo off
mode con cols=38 lines=2
Title Valheim-DirectX
Color 0a
@echo Demarrage de Valheim-DirectX...
@Echo off
cd ..
rename winhttp.dll winhttp_.dll
timeout /t 2 /nobreak > nul
start steam://rungameid/892970
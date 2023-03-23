@Echo off
mode con cols=38 lines=3
Title GFX on
Color 0a
@echo gfx-enable-gfx-jobs=1
@echo gfx-enable-native-gfx-jobs=1
@Echo off
timeout /t 4 /nobreak > nul
@echo 
cd..
cd valheim_Data/
if exist boot.config del boot.config
echo.>>boot.config
echo wait-for-native-debugger=0 >> boot.config
echo hdr-display-enabled=0 >> boot.config
echo gc-max-time-slice=3 >> boot.config
echo gfx-enable-gfx-jobs=1 >> boot.config
echo gfx-enable-native-gfx-jobs=1 >> boot.config
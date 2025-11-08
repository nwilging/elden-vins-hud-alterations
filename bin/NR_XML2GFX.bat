@echo off
setlocal

:: Path to FFDec (Update this if needed)
set FFDEC_PATH="C:\Program Files (x86)\FFDec\ffdec.bat"
set SOURCE_PATH="E:\Games\Steam\steamapps\common\Nightreign EldenVins\ELDEN VINS NIGHTREIGN\mod\menu"

cd /d %SOURCE_PATH%

:: Process
for %%F in (*.xml) do (
    echo Converting: %%F
    %FFDEC_PATH% -xml2swf "%%F" "%%~nF.gfx"
)

pause
@echo off
setlocal enabledelayedexpansion

set SOURCE_FOLDER=.\before_pic
set OUTPUT_FOLDER=.\pics
set QUALITY=80
set WIDTH=177
if not exist "%OUTPUT_FOLDER%" (
    mkdir "%OUTPUT_FOLDER%"
)

for %%f in ("%SOURCE_FOLDER%\*.jpg") do (
    set "filename=%%~nf"
    set "outfile=%OUTPUT_FOLDER%\%%~nf.jpg"

    echo %%~nxf
    magick "%%f" -resize %WIDTH%x -quality %QUALITY% "!outfile!"
)

pause
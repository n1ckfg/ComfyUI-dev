@echo off

cd /D %~dp1

set FILENAME=%~n1
set DIR=%~dp1
for %%a in (%FILENAME%) do set NAME=%%~na
set INPUT=%DIR%%NAME%.%%03d.png
set OUTPUT=%DIR%%NAME%.mp4

set VIDEO_BITRATE=20M
set VIDEO_BITRATE_MAX=20M
set VIDEO_BITRATE_MIN=20M
set AUDIO_BITRATE=320k

set ENCODE_SPEED=slow
set PROFILE=main
set LEVEL=4.1

set FFMPEG_PATH=C:\Util\ffmpeg\bin\ffmpeg

%FFMPEG_PATH% -y -f image2 -framerate 24 -i %INPUT% -vcodec libx264 -pix_fmt yuv420p -f mp4 -preset:v %ENCODE_SPEED% -b:v %VIDEO_BITRATE% -maxrate %VIDEO_BITRATE_MAX% -minrate %VIDEO_BITRATE_MIN% -profile:v %PROFILE% -level %LEVEL% -acodec aac -strict -2 -b:a %AUDIO_BITRATE% %OUTPUT%

setlocal
:PROMPT
SET /P AREYOUSURE=Delete source PNG sequence (Y/N)? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo ... deleting source PNGs ...
rm %DIR%%NAME%.png
rm %DIR%%NAME%.*.png

:END
endlocal

@pause

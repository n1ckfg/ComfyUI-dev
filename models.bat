@echo off

cd %~dp0

cd ComfyUI

mv models models_old
powershell -Command "Invoke-WebRequest https://fox-gieg.com/patches/github/n1ckfg/ComfyUI/models.zip -OutFile models.zip"
powershell Expand-Archive models.zip -DestinationPath .
del models.zip

@pause
@echo off

cd %~dp0

cd ComfyUI

cd models\checkpoints
powershell -Command "Invoke-WebRequest https://civitai.com/api/download/models/128713 -OutFile dreamshaper_8.safetensors"

@pause
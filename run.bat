@echo off

cd %~dp0

start "" http://127.0.0.1:8188

cd ComfyUI
python main.py --max-upload-size 1500

@pause
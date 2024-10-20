@echo off

cd %~dp0

cd ComfyUI
python main.py --max-upload-size 1500

@pause
@echo off

cd %~dp0

start http://127.0.0.1:8188

cd ComfyUI

cd custom_nodes\was-node-suite-comfyui
git clean -fdx
cd ..\..

rem python main.py --max-upload-size 1500
python main.py

@pause
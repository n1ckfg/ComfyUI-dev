@echo off

cd %~dp0

start http://127.0.0.1:8188

cd ComfyUI

cd custom_nodes\was-node-suite-comfyui
git clean -fdx
cd ..\..

python main.py --listen 0.0.0.0 --port 8188

@pause
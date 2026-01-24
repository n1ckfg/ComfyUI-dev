@echo off

cd %~dp0

start http://127.0.0.1:8188

cd ComfyUI

cd custom_nodes

cd was-node-suite-comfyui
git clean -fdx

cd ..\comfyui-depthanythingv2
git clean -fdx

cd ..\..

rem python main.py --listen 0.0.0.0 --port 8188 --use-sage-attention
python main.py --listen 0.0.0.0 --port 8188

@pause
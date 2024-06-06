@echo off

cd %~dp0

git clone https://github.com/n1ckfg/ComfyUI
cd ComfyUI
pip install -r requirements.txt

cd custom_nodes
git clone https://github.com/n1ckfg/ComfyUI-Manager
git clone https://github.com/n1ckfg/comfyui-p5js-node

cd ..\models\checkpoints
powershell -Command "Invoke-WebRequest https://civitai.com/api/download/models/128713 -OutFile dreamshaper_8.safetensors"

@pause
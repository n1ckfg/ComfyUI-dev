@echo off

cd %~dp0

pip install -r requirements.txt

git clone https://github.com/n1ckfg/ComfyUI
cd ComfyUI
pip install -r requirements.txt
pip install --upgrade torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

cd custom_nodes
git clone https://github.com/n1ckfg/ComfyUI-Manager
git clone https://github.com/n1ckfg/comfyui-p5js-node
git clone https://github.com/n1ckfg/ComfyUI-VideoHelperSuite
git clone https://github.com/n1ckfg/ComfyUI-AnimateDiff-Evolved
git clone https://github.com/n1ckfg/ComfyUI-Advanced-ControlNet

@pause
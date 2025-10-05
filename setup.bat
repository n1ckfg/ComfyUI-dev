@echo off

cd %~dp0

pip install -r requirements.txt

git clone https://github.com/n1ckfg/ComfyUI
cd ComfyUI
pip install -r requirements.txt
pip install --upgrade torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

cd custom_nodes
git clone https://github.com/n1ckfg/ComfyUI-Manager
git clone https://github.com/n1ckfg/ComfyUI_essentials
git clone https://github.com/n1ckfg/ComfyUI-TiledDiffusion
git clone https://github.com/n1ckfg/comfyui-p5js-node
git clone https://github.com/n1ckfg/ComfyUI-VideoHelperSuite
git clone https://github.com/n1ckfg/ComfyUI-AnimateDiff-Evolved
git clone https://github.com/n1ckfg/ComfyUI-Advanced-ControlNet
git clone https://github.com/n1ckfg/ComfyUI-Environment-Visualizer
git clone https://github.com/n1ckfg/Lora-Training-in-Comfy
git clone https://github.com/n1ckfg/ComfyUI-DepthAnythingV2
git clone https://github.com/n1ckfg/Comfyui_TTP_Toolset
git clone https://github.com/n1ckfg/comfyui-janky-nodes
git clone https://github.com/n1ckfg/ComfyUI-Inspire-Pack

@pause
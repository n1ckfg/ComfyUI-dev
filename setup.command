#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

pip install -r requirements.txt

git clone https://github.com/n1ckfg/ComfyUI
cd ComfyUI
pip install -r requirements.txt
pip install --pre --upgrade torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cpu

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
git clone https://github.com/n1ckfg/ComfyUI_Ib_CustomNodes
git clone https://github.com/n1ckfg/ComfyUI-Impact-Pack
git clone https://github.com/n1ckfg/ComfyUI-MultiGPU
git clone https://github.com/n1ckfg/was-node-suite-comfyui
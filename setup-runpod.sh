#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd "$DIR"

apt-get update
apt-get install zip unzip

bash models.sh

mv ../runpod-slim/ComfyUI/models ../runpod-slim/ComfyUI/models_old
mv models ../runpod-slim/ComfyUI/

cd ../runpod-slim/ComfyUI

cd custom_nodes
#git clone https://github.com/n1ckfg/ComfyUI-Manager

#git clone https://github.com/n1ckfg/Civicomfy
git clone https://github.com/n1ckfg/ComfyMath
git clone https://github.com/n1ckfg/ComfyUI-Advanced-ControlNet
git clone https://github.com/n1ckfg/ComfyUI-AnimateDiff-Evolved
git clone https://github.com/n1ckfg/ComfyUI-Crystools
git clone https://github.com/n1ckfg/ComfyUI-Custom-Scripts
git clone https://github.com/n1ckfg/ComfyUI-DepthAnythingV2
#git clone https://github.com/n1ckfg/ComfyUI-DepthCrafter-Nodes
git clone https://github.com/n1ckfg/ComfyUI-Environment-Visualizer
#git clone https://github.com/n1ckfg/ComfyUI-FLATTEN
git clone https://github.com/n1ckfg/ComfyUI-GGUF
git clone https://github.com/n1ckfg/ComfyUI-Impact-Pack
git clone https://github.com/n1ckfg/comfyui-inpaint-nodes
git clone https://github.com/n1ckfg/ComfyUI-Inspire-Pack
git clone https://github.com/n1ckfg/comfyui-janky-nodes
git clone https://github.com/n1ckfg/ComfyUI-Jjk-Nodes
git clone https://github.com/n1ckfg/ComfyUI-KJNodes
git clone https://github.com/n1ckfg/ComfyUI-LatentWalk
git clone https://github.com/n1ckfg/ComfyUI-MultiGPU
git clone https://github.com/n1ckfg/comfyui-optical-flow
git clone https://github.com/n1ckfg/comfyui-p5js-node
git clone https://github.com/n1ckfg/ComfyUI-post-processing-nodes
#git clone https://github.com/n1ckfg/ComfyUI-RAVE
git clone https://github.com/n1ckfg/ComfyUI-TiledDiffusion
git clone https://github.com/n1ckfg/comfyui-tooling-nodes
git clone https://github.com/n1ckfg/ComfyUI-VideoHelperSuite
git clone https://github.com/n1ckfg/ComfyUI_yanc
#git clone https://github.com/n1ckfg/ComfyUI-WD14-Tagger
git clone https://github.com/n1ckfg/ComfyUI_Comfyroll_CustomNodes
git clone https://github.com/n1ckfg/comfyui_controlnet_aux
git clone https://github.com/n1ckfg/ComfyUI_Custom_Nodes_AlekPet
git clone https://github.com/n1ckfg/ComfyUI_essentials
#git clone https://github.com/n1ckfg/comfyui_glslnodes
git clone https://github.com/n1ckfg/ComfyUI_Ib_CustomNodes
git clone https://github.com/n1ckfg/ComfyUI_IPAdapter_plus
git clone https://github.com/n1ckfg/ComfyUI_Noise
#git clone https://github.com/n1ckfg/Comfyui_TTP_Toolset
git clone https://github.com/n1ckfg/execution-inversion-demo-comfyui
git clone https://github.com/n1ckfg/Image-Captioning-in-ComfyUI
#git clone https://github.com/n1ckfg/Lora-Training-in-Comfy
git clone https://github.com/n1ckfg/was-node-suite-comfyui

cd was-node-suite-comfyui
pip3 install -r requirements.txt

cd ../ComfyUI-Impact-Pack
pip3 install -r requirements.txt


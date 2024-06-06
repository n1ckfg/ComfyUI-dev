#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

git clone https://github.com/n1ckfg/ComfyUI
cd ComfyUI
pip install -r requirements.txt
pip install --pre --upgrade torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cpu

cd custom_nodes
git clone https://github.com/n1ckfg/ComfyUI-Manager
git clone https://github.com/n1ckfg/comfyui-p5js-node

cd ..\models\checkpoints
wget https://civitai.com/api/download/models/128713

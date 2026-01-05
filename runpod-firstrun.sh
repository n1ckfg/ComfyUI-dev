#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd "$DIR"

pkill -f "main.py --listen 0.0.0.0 --port 8188"

apt-get update && apt-get install zip unzip libtbb-dev

cd /workspace/runpod-slim/ComfyUI

cd custom_nodes

cd was-node-suite-comfyui
git clean -fdx
pip install -r requirements.txt

cd ../ComfyUI-Impact-Pack
pip install -r requirements.txt

cd ../ComfyUI-OIDN
pip install -r requirements.txt

cd ../..

nohup python3 main.py --listen 0.0.0.0 --port 8188 &

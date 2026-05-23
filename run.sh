#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd "$DIR"

xdg-open http://127.0.0.1:8188

cd ComfyUI

cd custom_nodes

cd was-node-suite-comfyui
git clean -fdx

cd ../comfyui-depthanythingv2
git clean -fdx

cd ../..

# --disable-smart-memory: Ooffload idle models to system RAM instead of keeping them in VRAM.
# --cpu-vae: Forces the VAE to decode on the CPU. It is slower, but saves VRAM and prevents a sudden temperature and power spike at the very end of generation.
# --lowvram: Slices UNet computation into smaller parts. This relies heavily on system RAM swapping, keeping GPU temperatures lower at the cost of speed.
# --reserve-vram 2.0: Keeps 2GB of VRAM free for Windows, preventing the OS display driver from starving and crashing.

python main.py --listen 0.0.0.0 --port 8188
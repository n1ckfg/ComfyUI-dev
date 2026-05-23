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

rem --disable-smart-memory: Offload idle models to system RAM instead of keeping them in VRAM.
rem --cpu-vae: Force the VAE to decode on the CPU. Slower, but saves VRAM and prevents a sudden temperature and power spike at the very end of generation.
rem --lowvram: Slice UNet computation into smaller parts. Relies heavily on system RAM swapping, keeping GPU temperatures lower at the cost of speed.
rem --reserve-vram 2.0: Keeps x GB of VRAM free, preventing the OS display driver from starving and crashing.

rem python main.py --listen 0.0.0.0 --port 8188 --use-sage-attention
python main.py --listen 0.0.0.0 --port 8188 --reserve-vram 1.0 --use-sage-attention

@pause
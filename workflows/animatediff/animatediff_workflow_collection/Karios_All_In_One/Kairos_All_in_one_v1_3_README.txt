This is a workflow that allow to do both Txt2Gif and Img2Gif without changing nodes.
It also comes with a simple yet decent upscale and good interpolation.

To switch between Txt2Gif and Img2Gif change the value of the black node (Latent blend) :

- For Txt2Gif, change the value of blend_factor to 0
(Recommended denoising strength  : 1.0)

- For Img2Gif, change the value of blend_factor to 1
(Recommended denoising strength  : 0.75-0.95)

- You can also choose any value in between for the blend_factor.

By default the "Ai Upscale" node is deactivated as to not trigger an upscale at every generation.
To activate the Upscale node, right click on it > Mode > Always.

The batch size of latents are now calculated by Base Frames Rate * Animation length in seconds.
The Base Frame Rate have been set to 10 as default, only requiring to change the animation length.
The frame rate of the final animation is now set by Desired Interpolated Frame Rate.

The input image will now be resized to the corresponding resolution of the animation.

Custom nodes needed :
https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved
https://github.com/Fannovel16/ComfyUI-Frame-Interpolation
https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes
https://github.com/WASasquatch/was-node-suite-comfyui

Gdrive Link : https://drive.google.com/drive/folders/1e7MtjFJvtu0GMjpeLpy7ATdQ6IyGP8G3
You can download the image of the workflow and drag and drop it into the UI.
You can also do the same with the .Json file. 
Current version : v1_3
Credits to @kosinkadink  for the AnimateDiff nodes !
Credits to @fannovel16 and @twopikachus for the interpolation nodes and workflow !
Credits to @idmon_ for the resizing idea !
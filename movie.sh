#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd "$DIR"

#ffmpeg -framerate 24 -i ComfyUI_%04d.png -c:v libx264 -pix_fmt yuv420p -crf 18 -preset slow output.mp4

ffmpeg -framerate 24 -i ComfyUI_%04d.png -c:v h264_nvenc -pix_fmt yuv420p -cq 18 -preset p7 output.mp4
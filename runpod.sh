#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd "$DIR"

bash setup.sh
bash models.sh

cd ../runpod-slim/ComfyUI

mv models models_old
mv custom_nodes custom_nodes_old

ln -s ../../ComfyUI-dev/ComfyUI/models
ln -s ../../ComfyUI-dev/ComfyUI/custom_nodes

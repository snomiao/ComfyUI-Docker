#!/bin/sh

# clone ComfyUI repo and install requirements
git clone https://github.com/comfyanonymous/ComfyUI ./ComfyUI
cd ./ComfyUI
pip install -r ./requirements.txt

# create custom_nodes directory and clone custom nodes
cd custom_nodes
git clone https://github.com/Comfy-Org/ComfyUI-Manager
git clone https://github.com/Comfy-Org/ComfyUI_devtools

# install custom node requirements
ls custom_nodes/*/requirements.txt | xargs -I {} pip install -r {}

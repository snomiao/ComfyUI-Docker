#!/bin/bash

# if ./pyproject.toml exists, it means the repo is already cloned
[ -f ./pyproject.toml ] || bash ./init.sh

# Update ComfyUI to latest main branch
git pull
pip install -r requirements.txt

# install custom node requirements
ls custom_nodes/*/requirements.txt | xargs -I {} pip install -r {}

# launch
python main.py $*

# for video helper suit
# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

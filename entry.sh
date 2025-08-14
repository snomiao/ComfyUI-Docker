#!/bin/bash

# update
git pull
pip install -r requirements.txt

# setup virtual environment, and for this venv, fallback to system site packages
[ -d .venv ] || uv venv --system-site-packages
source .venv/bin/activate

ls custom_nodes/*/requirements.txt | xargs -I {} uv pip install -r {}

# launch
python main.py $*

# for video helper suit
# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

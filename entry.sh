#!/bin/bash

# update
git pull

# install requirements using pip (system packages are already available)
pip install -r requirements.txt

# install custom node requirements
ls custom_nodes/*/requirements.txt | xargs -I {} pip install -r {}

# launch
python main.py $*

# for video helper suit
# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

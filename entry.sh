#!/bin/bash

# activate venv
uv venv
.venv/bin/activate

# check if .bashrc already has the source command
grep -q ".venv/bin/activate" /root/.bashrc || \
    echo "source /ComfyUI/.venv/bin/activate" >> /root/.bashrc

# update
git pull
pip install -r requirements.txt

# launch
python main.py $*

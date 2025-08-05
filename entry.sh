#!/bin/bash

# activate
uv venv
.venv/bin/activate

# echo .venv/bin/activate >> /root/.bashrc

# update
git pull
uv pip install -r requirements.txt

# launch
python main.py $*

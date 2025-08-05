#!/bin/bash

# update
git pull
pip install -r requirements.txt

# install requirements for custom nodes
# cd custom_nodes

# launch
python main.py $*

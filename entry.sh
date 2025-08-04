#!/bin/bash

# update
git pull
pip install -r requirements.txt

# launch
python main.py $*

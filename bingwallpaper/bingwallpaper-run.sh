#!/bin/bash

ping -c1 google.com
if [ $? -ne 0 ]; then
    echo "ERROR connect network, waiting for auto restart"
    exit 1
fi

/home/shdennlin/.pyenv/shims/python ./BingWallpaper/BingWallpaper.py --auto
echo "successful run the BingWallpaper/BingWallpaper.py"


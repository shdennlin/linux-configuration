#!/bin/bash

ping -c1 google.com
if [ $? -ne 0 ]; then
    echo "ERROR connect network, waiting for auto restart"
    exit 2
fi

python3 ./BingWallpaper/BingWallpaper.py --auto


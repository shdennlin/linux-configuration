#!bin/bash

# currentBackgroudPath='/home/shdennlin/snap/bing-wall/13/.local/share/org.keshavnrj.ubuntu/BingWall/downloaded/'
BackgroudPath='/home/shdennlin/snap/bing-wall/13/.local/share/org.keshavnrj.ubuntu/BingWall/downloaded/'

currentBackground=$(ls -At $BackgroudPath | head -n 1)

echo $currentBackground

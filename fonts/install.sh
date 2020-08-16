#! /bin/sh
# echo 'unzip opentype and truetype'
# unzip -oq opentype.zip
# unzip -oq truetype.zip
# echo 'unzip successful'

sudo mkdir -p /usr/local/share/fonts/truetype
sudo mkdir -p /usr/local/share/fonts/opentype
sudo cp ./truetype/* /usr/local/share/fonts/truetype
sudo cp ./opentype/* /usr/local/share/fonts/opentype
sudo chmod 755 * /usr/local/share/fonts/truetype/*
sudo chmod 755 * /usr/local/share/fonts/opentype/*
echo 'do fc-cache -f -v ====================>'
fc-cache -f -v
echo 'install fonts successful'

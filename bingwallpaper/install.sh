#!/bin/bash

mkdir -pv ~/.config/systemd/user/
cp -f ./bingwallpaper-run.service ~/.config/systemd/user/
cp -f ./bingwallpaper-run.timer ~/.config/systemd/user/

systemctl --user daemon-reload
systemctl --user enable bingwallpaper-run.timer
systemctl --user start bingwallpaper-run.service
systemctl --user status bingwallpaper-run.service
systemctl --user status bingwallpaper-run.timer

echo "install & start bingwallpaper-run.service successful"

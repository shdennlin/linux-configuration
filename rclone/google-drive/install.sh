#!/bin/bash

mkdir -p ~/.config/systemd/user/
cp -f ./rclone-mount-google-drive.service ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable rclone-mount-google-drive.service
systemctl --user start rclone-mount-google-drive.service
systemctl --user status rclone-mount-google-drive.service
echo "install rclone-mount-google-drive.service successful"

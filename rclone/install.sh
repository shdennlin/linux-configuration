#!bin/sh

sudo cp ./rcmount.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable rcmount.service
sudo systemctl start rcmount.service
echo "install rcmount.service successful"

#!/bin/bash
#  chmod +x filename

read -p "After the Raspberry Pi settings have been updated the system will restart. Press any key to start..." -n1 -s

sudo sh -c "echo 'dtoverlay=pi3-miniuart-bt' >> /boot/config.txt"
sudo sh -c "echo 'enable_uart=1' >> /boot/config.txt"
sudo systemctl disable hciuart

# New os uses Serial0
# good read - http://spellfoundry.com/2016/05/29/configuring-gpio-serial-port-raspbian-jessie-including-pi-3/

# RPI 3 only
sudo systemctl stop serial-getty@ttyS0.service
sudo systemctl disable serial-getty@ttyS0.service

# Remove shortcut 
sudo rm /home/pi/Desktop/Rpi3SerialConfig.desktop

sudo shutdown -r now

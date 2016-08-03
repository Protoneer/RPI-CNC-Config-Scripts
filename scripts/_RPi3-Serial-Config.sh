#!/bin/bash

sudo echo "dtoverlay=pi3-miniuart-bt" >> /boot/config.txt
sudo echo "enable_uart=1" >> /boot/config.txt
sudo systemctl disable hciuart

sudo sed -i 's/ console=serial0,115200//g' /boot/cmdline.txt

# New os uses Serial0
# good read - http://spellfoundry.com/2016/05/29/configuring-gpio-serial-port-raspbian-jessie-including-pi-3/

# RPI 3 only
sudo systemctl stop serial-getty@ttyS0.service
sudo systemctl disable serial-getty@ttyS0.service



sudo shutdown -r now

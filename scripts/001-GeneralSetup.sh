#!/bin/bash

# Copy shortcuts to desktop
cp -a ~/RPI-CNC-Config-Scripts/resources/shortcuts/. /home/pi/Desktop/

# Install utilities to make things easier
sudo apt-get -y --force-yes install minicom tightvncserver xrdp



# Stop the console from outputting ot hardware serial pins
sudo sed -i 's/ console=serial0,115200//g' /boot/cmdline.txt

sudo shutdown -r now

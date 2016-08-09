#!/bin/bash
sudo sed -i 's/ console=serial0,115200//g' /boot/cmdline.txt

sudo shutdown -r now

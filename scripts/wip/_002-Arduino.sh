#!/bin/bash

sudo apt-get install arduino -y

# This bit is not working yet.
cat 'KERNEL=="ttyAMA0",SYMLINK+="ttyS0" GROUP="dialout"'  >> '/etc/udev/rules.d/99-tty.rules'
cat 'KERNEL=="ttyACM0",SYMLINK+="ttyS1" GROUP="dialout"'  >> '/etc/udev/rules.d/99-tty.rules'


# This link will help with setting up above : http://spellfoundry.com/sleepy-pi/setting-arduino-ide-raspbian/#Step_3_Link_the_Serial_port_to_the_Arduino_IDE

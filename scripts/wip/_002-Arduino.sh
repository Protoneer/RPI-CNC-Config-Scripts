#!/bin/bash

# install Aruino
cd  ~
wget https://downloads.arduino.cc/arduino-1.6.10-linuxarm.tar.xz
tar xf arduino-1.6.10-linuxarm.tar.xz
rm arduino-1.6.10-linuxarm.tar.xz


cd arduino-1.6.10/hardware/tools/avr/bin
sudo mv arduino-1.6.10/hardware/tools/avr/bin/avrdude arduino-1.6.10/hardware/tools/avr/bin/avrdude-original
# Need local copies and time to 15ms
wget https://raw.githubusercontent.com/Protoneer/avrdude-rpi/master/autoreset
wget https://raw.githubusercontent.com/Protoneer/avrdude-rpi/master/avrdude-autoreset
sudo ln -s avrdude-autoreset avrdude
sudo chmod 777 avrdude


# This bit is not working yet.
#cat 'KERNEL=="ttyAMA0",SYMLINK+="ttyS0" GROUP="dialout"'  >> '/etc/udev/rules.d/99-tty.rules'
#cat 'KERNEL=="ttyACM0",SYMLINK+="ttyS1" GROUP="dialout"'  >> '/etc/udev/rules.d/99-tty.rules'


# This link will help with setting up above : http://spellfoundry.com/sleepy-pi/setting-arduino-ide-raspbian/#Step_3_Link_the_Serial_port_to_the_Arduino_IDE




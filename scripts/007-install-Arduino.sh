#!/bin/bash

sudo apt-get install -y python-dev python-rpi.gpio

# install Aruino
wget https://downloads.arduino.cc/arduino-1.8.10-linuxarm.tar.xz -P ~
tar xf ~/arduino-1.8.10-linuxarm.tar.xz -C ~/arduino
mv arduino-1.8.10 arduino
rm ~/arduino-1.8.10-linuxarm.tar.xz

# Install avrdude-rpi
cp avrdude-rpi/autoreset2560 ~/arduino/hardware/tools/avr/bin/
cp avrdude-rpi/autoreset328 ~/arduino/hardware/tools/avr/bin/
cp avrdude-rpi/avrdude-autoreset ~/arduino/hardware/tools/avr/bin/
sudo mv ~/arduino/hardware/tools/avr/bin/avrdude ~/arduino/hardware/tools/avr/bin/avrdude-original
sudo ln -s ~/arduino/hardware/tools/avr/bin/avrdude-autoreset ~/arduino/hardware/tools/avr/bin/avrdude


sudo chmod +x ~/arduino/hardware/tools/avr/bin/avrdude
sudo chmod +x ~/arduino/hardware/tools/avr/bin/autoreset328
sudo chmod +x ~/arduino/hardware/tools/avr/bin/autoreset2560

# Make AVRDUDE available for all
sudo ln -s -T ~/arduino/hardware/tools/avr/bin/avrdude /usr/local/bin/avrdude

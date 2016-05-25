#!/bin/bash

sudo apt-get install -y avrdude python-dev python-rpi.gpio minicom
cp autoreset /usr/bin
cp avrdude-autoreset /usr/bin
mv /usr/bin/avrdude /usr/bin/avrdude-original
ln -s /usr/bin/avrdude-autoreset /usr/bin/avrdude

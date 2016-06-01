#!/bin/bash

sudo apt-get install arduino -y

# This bit is not working yet.
cat 'KERNEL=="ttyAMA0",SYMLINK+="ttyS0" GROUP="dialout"'  >> '/etc/udev/rules.d/99-tty.rules'
cat 'KERNEL=="ttyACM0",SYMLINK+="ttyS1" GROUP="dialout"'  >> '/etc/udev/rules.d/99-tty.rules'

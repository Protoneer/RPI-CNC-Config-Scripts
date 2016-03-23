sudo apt-get install avrdude -y


## https://github.com/CisecoPlc/avrdude-rpi
wget https://raw.githubusercontent.com/grbl/grbl-builds/master/builds/grbl_v0_9i_atmega328p_16mhz_115200.hex
avrdude -p m328p -P /dev/ttyAMA0 -b 57600 -c arduino -vvvv -n
grbl_v0_9i_atmega328p_16mhz_115200.hex

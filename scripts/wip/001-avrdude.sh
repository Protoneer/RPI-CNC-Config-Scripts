sudo apt-get install avrdude -y


## https://github.com/CisecoPlc/avrdude-rpi
wget https://raw.githubusercontent.com/grbl/grbl-builds/master/builds/grbl_v0_9i_atmega328p_16mhz_115200.hex

sudo avrdude -c arduino -P /dev/ttyAMA0 -b 57600 -v -p atmega328p -D -U flash:w:grbl_v0_9i_atmega328p_16mhz_115200.hex

-C/home/bertus/Tools/arduino-1.6.4/hardware/tools/avr/etc/avrdude.conf

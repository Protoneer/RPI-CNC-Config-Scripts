sudo apt-get install avrdude -y


## https://github.com/CisecoPlc/avrdude-rpi
wget https://raw.githubusercontent.com/grbl/grbl-builds/master/builds/grbl_v0_9i_atmega328p_16mhz_115200.hex

sudo avrdude -c arduino -P /dev/ttyAMA0 -b 57600 -v -p atmega328p -Cavrdude.conf -D -U flash:w:grbl_v0_9i_atmega328p_16mhz_115200.hex

-Cavrdude.conf


Good info!!!
https://github.com/openenergymonitor/avrdude-rpi

To upload to the emonPi (ATmega328 @ 16Mhz):
$ avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:sketch_name.hex

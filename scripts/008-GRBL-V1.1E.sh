avrdude -v -C ~/arduino-1.8.1/hardware/tools/avr/etc/avrdude.conf -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:../resources/firmware/grbl_v1.1e.20170114.hex

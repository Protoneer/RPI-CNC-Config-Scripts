wget -O ../resources/firmware/grbl_latest.hex https://raw.githubusercontent.com/Protoneer/RPI-CNC-Config-Scripts/master/resources/firmware/grbl_latest.hex
avrdude -v -C ~/arduino-1.8.1/hardware/tools/avr/etc/avrdude.conf -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:../resources/firmware/grbl_latest.hex

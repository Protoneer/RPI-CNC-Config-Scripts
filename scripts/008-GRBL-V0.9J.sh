avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:~/RPI-CNC-Config-Scripts/resources/firmware/grbl_v0_9j_atmega328p_16mhz_115200.hex"

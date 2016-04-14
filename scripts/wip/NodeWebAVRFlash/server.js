var exec = require('child_process').execSync;
var download = exec('wget https://raw.githubusercontent.com/grbl/grbl-builds/master/builds/grbl_v0_9j_atmega328p_16mhz_115200.hex -O firmware.hex')
var html = exec('avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:firmware.hex').toString()
console.log(html);

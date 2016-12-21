/*
	var exec = require('child_process').execSync;
	//var download = exec('wget https://raw.githubusercontent.com/grbl/grbl-builds/master/builds/grbl_v0_9j_atmega328p_16mhz_115200.hex -O firmware.hex')
	var flashResults = exec('avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:./lib/uploads/firmware.hex').toString();
	console.log(flashResults);
*/

var exec = require('child_process').exec;
var child = exec('avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:./lib/uploads/firmware.hex');

child.stdout.on('data', function(data) {
    console.log('stdout: ' + data);
});
child.stderr.on('data', function(data) {
    console.log('stdout: ' + data);
});
child.on('close', function(code) {
    console.log('closing code: ' + code);
});

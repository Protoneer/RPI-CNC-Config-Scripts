var exec = require('child_process').execSync;
var download = exec('wget',['https://raw.githubusercontent.com/grbl/grbl-builds/master/builds/grbl_v0_9j_atmega328p_16mhz_115200.hex'])
var html = exec('dir').toString()
console.log(html);

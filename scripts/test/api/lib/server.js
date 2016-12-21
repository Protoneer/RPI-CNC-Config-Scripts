var express = require('express');
var bodyParser = require('body-parser');

var server = module.exports = express();

server.use( bodyParser.json() );       // to support JSON-encoded bodies
server.use(bodyParser.urlencoded({     // to support URL-encoded bodies
  extended: true
})); 


server.set('views', __dirname + '/views'); 	// Views file folder
server.engine('html', require('ejs').renderFile);
server.set('view engine', 'ejs');

server.use(express.static(__dirname + '/static')); 			// Static folder


var testEnabled = true;

// Routes
server.get('/api/enabled', function (req, res) {
	var results = {"Enabled":testEnabled};	
	res.json(results);		
});
server.post('/api/enabled', function (req, res) {
	if(req.body.enable.toUpperCase() === 'TRUE'){
		testEnabled = true;
	} else {
		testEnabled = false;
	}
	var results = {"Enabled":testEnabled};	
	res.json(results);		
});

server.get('/api/uploadFirmware', function (req, res) {
	var results = {};
	if(!testEnabled){
		results.error = "API not enabled";
	} else {
		results.targetFirmware = "firmwaregrbl_v0_9j_atmega328p_16mhz_115200.hex";
		results.result = flash(results.targetFirmware);
	}
	res.json(results);		
});

function flash(firmware){
	/*

	var flashResults = '';

	var exec = require('child_process').exec;
	var child = exec('avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:./lib/uploads/firmware.hex');

	child.stdout.on('data', function(data) {
		console.log('stdout: ' + data);
		flashResults += data;
	});
	child.stderr.on('data', function(data) {
		console.log('stdout: ' + data);
		flashResults += data;
	});
	child.on('close', function(code) {
		flashResults += 'closing code: ' + code;
		return flashResults;
	});
	*/

/*
	var execSync = require("exec-sync");
	var results = execSync('avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:./lib/uploads/firmware.hex');
	return results;
*/

	const execSync = require('child_process').execSync;
	execSync('node -v');
	console.log(execSync.stdout);
	return code.toString;


};




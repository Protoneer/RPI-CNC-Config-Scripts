var express = require('express');
var bodyParser = require('body-parser');
var flasher = require('./AVRFlasher');
var fs = require('fs');

var server = module.exports = express();

server.set('views', __dirname + '/views'); 			// Views file folder
server.engine('html', require('ejs').renderFile);
server.set('view engine', 'ejs');

server.use(express.static('lib/static')); 			// Static folder
server.use(bodyParser.urlencoded({extended: true})); 

// File uploads
var multer  =   require('multer');
var storage =   multer.diskStorage({
  destination: function (req, file, callback) {
    callback(null, __dirname + '/uploads');
  },
  filename: function (req, file, callback) {
    callback(null, 'firmware.hex');
  }
});
var upload = multer({ storage : storage}).single('firmware');


// Routes
server.get('/', function (req, res) {
	res.render('pages/index');
});

server.post('/upload', function (req, res) {
    upload(req,res,function(err) {
        if(err) {
			return res.json({"Status":"ERROR"});
        }
		res.json({"Status":"OK"});
    });
});

server.post('/flash', function (req, res) {
	var results = {"Test":"Test"};	

	var exec = require('child_process').execSync;
	//var download = exec('wget https://raw.githubusercontent.com/grbl/grbl-builds/master/builds/grbl_v0_9j_atmega328p_16mhz_115200.hex -O firmware.hex')
	var flashResults = exec('avrdude -v -c arduino -p ATMEGA328P -P /dev/ttyAMA0 -b 115200 -U flash:w:./lib/uploads/firmware.hex').toString();
	console.log(flashResults);
	res.json(results);		
});
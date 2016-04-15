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

// Routes
server.get('/', function (req, res) {
	res.render('pages/index');
});

server.post('/upload', function (req, res) {
	console.log(req.files);
	
	
	/*
	var newPath = __dirname + "/uploads/uploadedFileName";
	fs.writeFile(newPath, data, function (err) {
		res.redirect("back");
	});
	*/
	/*
    var tmp_path = req.files.thumbnail.path;

    var target_path = './public/images/' + req.files.thumbnail.name;
    // move the file from the temporary location to the intended location
    fs.rename(tmp_path, target_path, function(err) {
        if (err) throw err;
        // delete the temporary file, so that the explicitly set temporary upload dir does not get filled with unwanted files
        fs.unlink(tmp_path, function() {
            if (err) throw err;
            res.send('File uploaded to: ' + target_path + ' - ' + req.files.thumbnail.size + ' bytes');
        });
    });	
	
	*/
	
	var results = {"Status":"OK"};	
	res.json(results);		
});

server.post('/flash', function (req, res) {
	var results = {"Test":"Test"};	
	flasher.sleep(1000);
	flasher.sleep(1000);
	flasher.sleep(1000);
	flasher.sleep(1000);
	flasher.sleep(1000);
	res.json(results);		
});

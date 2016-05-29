var express = require('express');
var bodyParser = require('body-parser');

var server = module.exports = express();

server.set('views', __dirname + '/views'); 	// Views file folder
server.engine('html', require('ejs').renderFile);
server.set('view engine', 'ejs');

server.use(express.static(__dirname + '/static')); 			// Static folder




// Routes
server.get('/', function (req, res) {
	res.send('Home!');
});

server.get('/text', function (req, res) {
	res.send('text page');
});

server.get('/redirect', function (req, res) {
	res.redirect('/');
});

server.get('/json', function (req, res) {
	var results = {"Name":"Name"};	
	res.json(results);		
});

server.get('/index.html', function (req, res) {
	res.render('pages/index');
});

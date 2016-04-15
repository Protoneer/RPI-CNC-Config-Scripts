// ./test/tests.js

var server = require('../lib/server.js');
var expect = require('chai').expect;
var request = require('request');

var testServer;

function testEndpoint(doneObj,url,statusCode,post,body){
    var options = {
      url: url,
      headers: {
        'Content-Type': 'text/plain'
      }
    };
	
	if(post){
		request.post(options, function (err, res, body) {
		  expect(res.statusCode).to.equal(statusCode);
		  if(body){
			expect(res.body).to.equal(body);
		  }
		  doneObj();
		});			
	} else {
		request.get(options, function (err, res, body) {
		  expect(res.statusCode).to.equal(statusCode);
		  if(body){
			expect(res.body).to.equal(body);
		  }
		  doneObj();
		});			
	}
	
	
}

describe('server response', function() {
	this.timeout(15000);	
	before(function () {
		testServer = server.listen(80);
	});

	after(function () {
		testServer.close();
	});

	it('test index page ', function (done) {
		testEndpoint(done,'http://localhost',200);	  
	});
	it('test index(/) page', function (done) {
		testEndpoint(done,'http://localhost/',200);	  
	});
  
	it('test upload page', function (done) {
		testEndpoint(done,'http://localhost/upload',200,1);	  
	});

	it('test flash page', function (done) {
		testEndpoint(done,'http://localhost/flash',200,1);	  
	});
	
	it('test js/main.js page', function (done) {
		testEndpoint(done,'http://localhost/js/main.js',200);	  
	});
	
	it('test css/main.css page', function (done) {
		testEndpoint(done,'http://localhost/css/main.css',200);	  
	});
  
});

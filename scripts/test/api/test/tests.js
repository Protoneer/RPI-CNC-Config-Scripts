// ./test/tests.js

var server = require('../lib/server.js');
var expect = require('chai').expect;
var request = require('request');

var testServer;

describe('server response', function() {
  before(function () {
    testServer = server.listen(8000);
  });

  after(function () {
    testServer.close();
  });

  it('test home page', function (done) {
    var options = {
      url: 'http://localhost:8000',
      headers: {
        'Content-Type': 'text/plain'
      }
    };
    request.get(options, function (err, res, body) {
      expect(res.statusCode).to.equal(200);
      expect(res.body).to.equal('Home!');
      done();
    });
  });
  
  it('test test page', function (done) {
    var options = {
      url: 'http://localhost:8000/text',
      headers: {
        'Content-Type': 'text/plain'
      }
    };
    request.get(options, function (err, res, body) {
      expect(res.statusCode).to.equal(200);
      expect(res.body).to.equal('text page');
      done();
    });
  });

  it('test test page', function (done) {
    var options = {
      url: 'http://localhost:8000/redirect',
      headers: {
        'Content-Type': 'text/plain'
      }
    };
    request.get(options, function (err, res, body) {
      expect(res.statusCode).to.equal(200);
      expect(res.body).to.equal('Home!');
      done();
    });
  });
  
  it('test test page', function (done) {
    var options = {
      url: 'http://localhost:8000/json',
      headers: {
        'Content-Type': 'text/plain'
      }
    };
    request.get(options, function (err, res, body) {
      expect(res.statusCode).to.equal(200);
      expect(res.body).to.equal('{"Name":"Name"}');
      done();
    });
  });

  it('test test page', function (done) {
    var options = {
      url: 'http://localhost:8000/index.html',
      headers: {
        'Content-Type': 'text/plain'
      }
    };
    request.get(options, function (err, res, body) {
      expect(res.statusCode).to.equal(200);      
      done();
    });
  });
  
});

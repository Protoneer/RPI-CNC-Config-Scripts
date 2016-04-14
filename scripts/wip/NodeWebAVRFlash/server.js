var exec = require('child_process').execSync;
var html = exec('dir').toString()
console.log(html);
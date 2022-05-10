var express = require('express')    //Load express module with `require` directive
var app = express() 
 
//Define request response in root URL (/)
app.get('/', function (req, res) {
res.send('Hello Welcome to the Nodejs app')
})
app.listen(3030, function () {
console.log('app listening on port 3030!')
})

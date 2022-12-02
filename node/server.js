const express = require('express');

const app = express();

app.get('/test', (req, res) => {
	res.send('hello world');
});

app.use(express.static('public'));

var server = app.listen(8081, function() {
	var host = server.address().address;
	var port = server.address().port;
	console.log("http://%s:%s", host, port);
})
  GNU nano 4.3                                         server.js                                                   var express = require('express');

const http = require('http');
var https = require('https');                                                                                      var fs = require('fs');
var mariadb = require('mariadb/callback');

var app = express();
var database = express.Router();

const PATH = __dirname + '/public/';

app.get('/', function(req, res) {
    res.sendFile('/public/html/index.html', {root: __dirname });
});

app.get('/api/objet', (req, res) => {
  const conn = mariadb.createConnection({host:'database', user:'root', password:"admin", database:"woodyToys"});

  conn.query("SELECT * FROM Objet", (err, rows) => {
    if (err) {
      throw err;
    }
    conn.end();
    res.set('Content-Type', 'application/json');
    res.send(rows);
  });
});

app.use('/', express.static('public'));

app.use(function(req, res, next){
    res.setHeader('Content-Type', 'text/plain');
    res.status(404).send('Page introuvable !');
});


app.listen(8080);

http.createServer(function (req, res) {

    res.writeHead(301, { "Location": "https://" + req.headers['host'] + req.url });
    res.end();

}).listen(80);
var express = require('express');
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


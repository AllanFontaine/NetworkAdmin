var https = require('https');
var httpProxy = require('http-proxy');

var fs = require('fs');

var proxy_b2b = new httpProxy.createProxyServer({
        target: {
            host: 'b2b',
            port: 8080
        },
    ssl: {
        key: fs.readFileSync('private.key', 'utf8'),
        cert: fs.readFileSync('certificate.crt', 'utf8')
    }
});

const options = {
  key: fs.readFileSync('private.key', 'utf8'),
  cert: fs.readFileSync('certificate.crt', 'utf8')
};

https.createServer(options, function(req, res) {
         if (req.headers.host === 'b2b.wt2-1.ephec-ti.be') {
            proxy_b2b.proxyRequest(req, res);
            proxy_b2b.on('error', function(err, req, res) {
                if (err) console.log(err);
                res.writeHead(500);
                res.end('Oops, something went very wrong...');
        	});
        }
        else{
                  res.writeHead(200);
                res.end(req.headers.host);

          }
}).listen(443);

var http = require('http');

http.createServer(function (req, res) {

    res.writeHead(301, { "Location": "https://" + req.headers['host'] + req.url });
    res.end();

}).listen(80);

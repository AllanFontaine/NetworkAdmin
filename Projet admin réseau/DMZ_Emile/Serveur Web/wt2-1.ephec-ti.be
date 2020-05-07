server {
	listen 80 default_server;
	listen [::]:80 default_server;

	server_name wt2-1.ephec-ti.be www.wt2-1.ephec-ti.be;
	
	charset utf-8;

	root /var/www/exemple.com;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}
}
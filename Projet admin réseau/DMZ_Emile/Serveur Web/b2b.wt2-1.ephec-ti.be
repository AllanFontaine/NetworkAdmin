server {
	listen 80;
	listen [::]:80;

	server_name b2b.wt2-1.ephec-ti.be www.b2b.wt2-1.ephec-ti.be;
	
	charset utf-8;

	root /var/www/b2b;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}
}
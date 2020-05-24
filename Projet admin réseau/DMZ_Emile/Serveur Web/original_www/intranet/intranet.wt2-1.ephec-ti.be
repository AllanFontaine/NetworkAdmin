server {
	listen 80;
	listen [::]:80;

	server_name intranet.wt2-1.ephec-ti.be www.intranet.wt2-1.ephec-ti.be;
	
	charset utf-8;

	root /var/www/intranet;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}
}
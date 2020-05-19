server {
	listen 443 ssl;
	listen [::]:443 ssl;

	ssl_certificate    /etc/ssl/certificate.crt; 
    ssl_certificate_key    /etc/ssl/private.key;

	server_name b2b.wt2-1.ephec-ti.be www.b2b.wt2-1.ephec-ti.be;
	
	charset utf-8;

	root /var/www/b2b;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}
}
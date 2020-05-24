FROM ubuntu:latest

RUN apt update

RUN apt install -y nginx
RUN apt install -y nano
RUN apt install -y curl

COPY www/wt2-1.ephec-ti.be /etc/nginx/sites-available/
COPY b2b/b2b.wt2-1.ephec-ti.be /etc/nginx/sites-available/
COPY intranet/intranet.wt2-1.ephec-ti.be /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/wt2-1.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/b2b.wt2-1.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/intranet.wt2-1.ephec-ti.be /etc/nginx/sites-enabled/

RUN mkdir /var/www/b2b
RUN mkdir /var/www/intranet

COPY b2b/index.html /var/www/b2b
COPY b2b/structure.css /var/www/b2b

COPY www/index.html /var/www/html
COPY www/structure.css /var/www/html

COPY intranet/index.html /var/www/intranet
COPY intranet/structure.css /var/www/intranet

COPY b2b/certificate.crt /etc/ssl/b2b_ssl/
COPY b2b/private.key /etc/ssl/b2b_ssl/

COPY www/certificate.crt /etc/ssl/
COPY www/private.key /etc/ssl/


EXPOSE 80 443



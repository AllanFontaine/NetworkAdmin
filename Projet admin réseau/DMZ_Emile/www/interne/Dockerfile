FROM romeoz/docker-apache-php

RUN apt update -y
RUN apt install -y nano 
RUN apt install -y curl 
RUN apt install -y dnsutils 
RUN apt install -y net-tools 
RUN apt install -y elinks

RUN service apache2 restart

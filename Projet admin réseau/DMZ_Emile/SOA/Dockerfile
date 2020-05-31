FROM ubuntu:latest

RUN apt update
RUN apt install -y bind9
RUN apt install -y nano 
RUN apt install -y dnsutils

COPY config/db.internal.wt2-1.ephec-ti.be /etc/bind 
COPY config/db.wt2-1.ephec-ti.be /etc/bind 
COPY config/named.conf /etc/bind 
COPY config/named.conf.default-zones /etc/bind 
COPY config/named.conf.local /etc/bind 
COPY config/named.conf.options /etc/bind 

WORKDIR /etc/bind 

VOLUME /etc/bind

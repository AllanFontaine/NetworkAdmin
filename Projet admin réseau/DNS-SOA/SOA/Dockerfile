FROM ubuntu:16.04
RUN apt-get update #mise a jour des logiciel present
RUN apt-get install -y bind9 #installation de Bind9
RUN apt-get install -y nano  #installation d'un editeur de texte
RUN apt-get install -y dnsutils #installation de la commande "dig"

WORKDIR /etc/bind #choisir le repertoir dans lequel on travail

VOLUME /etc/bind #reserver un espace volume 

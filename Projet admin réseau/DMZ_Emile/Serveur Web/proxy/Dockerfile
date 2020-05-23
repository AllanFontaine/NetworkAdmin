FROM node:10

RUN     apt-get update

COPY package*.json ./

RUN npm install

COPY . . 

#CMD bash

EXPOSE 80/tcp
EXPOSE 443

CMD [ "node", "server.js" ]

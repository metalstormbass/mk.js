#Dockerfile
FROM debian:8.7

RUN mkdir /mk.js
COPY . /mk.js

RUN apt-get update && apt install nodejs npm -y && apt install sa-exim -y && apt-get install iputils-ping -y && apt-get install nmap -y

WORKDIR mk.js/server
RUN  npm install

EXPOSE 55555
CMD /usr/bin/nodejs server.js

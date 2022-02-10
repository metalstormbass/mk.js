#Dockerfile
FROM ubuntu:14.04

RUN mkdir /mk.js
COPY . /mk.js

#+deb8u8
RUN apt-get update && apt install nodejs npm -y && apt install sa-exim -y && apt-get install iputils-ping -y && apt-get install nmap -y

WORKDIR mk.js/server
RUN  npm config set strict-ssl false; npm install

EXPOSE 55555
CMD /usr/bin/nodejs server.js

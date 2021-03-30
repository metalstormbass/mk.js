#Dockerfile
FROM node:fermium-buster

RUN mkdir /mk.js
COPY . /mk.js

WORKDIR mk.js/server
RUN  npm install

EXPOSE 55555
CMD ["node", "server.js"]

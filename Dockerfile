FROM ubuntu 

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_21.x | bash -
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nodejs
#Use FROM node 
#then you don't need to write above code in Dockerfile


COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

RUN npm install

ENTRYPOINT [ "node", "main.js" ]


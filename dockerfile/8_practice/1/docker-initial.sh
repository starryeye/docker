#!/bin/zsh

cd front-server

docker build -t hello-front-server-image .

docker run -d -p 80:80 --name hello-front-server-container hello-front-server-image
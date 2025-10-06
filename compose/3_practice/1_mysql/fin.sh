#!/bin/zsh

docker compose -p mysql-services down
docker ps
docker compose -p mysql-services ps -a

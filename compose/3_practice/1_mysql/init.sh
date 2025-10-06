#!/bin/zsh

docker compose -p mysql-services up -d
docker ps
docker compose -p mysql-services ps -a

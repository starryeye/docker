#!/bin/zsh

cd demo/docker

docker compose -p spring-boot-services down
docker ps
docker compose -p spring-boot-services ps -a

#!/bin/zsh

cd demo/docker

docker compose -p article-services down
docker ps
docker compose -p article-services ps -a

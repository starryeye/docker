#!/bin/zsh

cd article
./gradlew clean
./gradlew assemble


cd docker
docker compose -p article-services up -d --build

docker ps
docker compose -p article-services ps -a
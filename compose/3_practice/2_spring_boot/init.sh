#!/bin/zsh

cd demo
./gradlew clean
./gradlew assemble


cd docker
docker compose -p spring-boot-services up -d --build

docker ps
docker compose -p spring-boot-services ps -a
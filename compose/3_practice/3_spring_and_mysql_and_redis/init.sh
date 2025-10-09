#!/bin/zsh

# application 빌드
cd article
./gradlew clean
./gradlew assemble

# docker compose 로 서비스들(application, database, cache) 실행
cd docker
docker compose -p article-services up -d --build

docker ps
docker compose -p article-services ps -a
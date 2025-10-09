#!/bin/zsh

# docker compose 로 서비스들(application, database, cache) 종료
docker compose -p article-services down
docker ps
docker compose -p article-services ps -a

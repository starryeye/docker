#!/bin/zsh

cd demo

# application 빌드
./gradlew clean
./gradlew assemble

# Dockerfile 로 이미지 빌드
docker build -f docker/Dockerfile -t hello-spring-image .

# 이미지로 container 실행
docker run -d -p 8080:8080 --name hello-spring-container hello-spring-image
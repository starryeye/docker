#!/bin/zsh

cd demo

./gradlew clean
./gradlew assemble

docker build -f docker/Dockerfile -t hello-spring-image .

docker run -d -p 8080:8080 --name hello-spring-container hello-spring-image
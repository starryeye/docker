#!/bin/zsh

./demo/gradlew clean
./demo/gradlew assemble

docker build -t hello-spring-image ./demo/docker/Dockerfile

docker run -d -p 8080:8080 --name hello-spring-container hello-spring-image
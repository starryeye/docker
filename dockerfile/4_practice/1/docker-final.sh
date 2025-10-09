#!/bin/zsh

# container 종료 및 삭제
docker rm -f hello-spring-container

# 이미지 삭제
docker image rm hello-spring-image
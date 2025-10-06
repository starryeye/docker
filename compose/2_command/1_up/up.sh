#!/bin/zsh

# 명령어
#   docker compose up
#       docker compose 파일(.yml) 위치에서 명령어를 수행하면
#       docker compose 파일(.yml) 을 실행하여 컨테이너들을 띄운다. (포그라운드)
#   docker compose up -d
#       백그라운드 실행
#   docker compose up --build
#       사용할 이미지를 재빌드하고 컨테이너를 띄운다.
#       docker compose 파일 내 build 옵션을 사용(Dockerfile 로 이미지 빌드)할 때만 유효한듯..

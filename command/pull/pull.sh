#!/bin/zsh

# 명령어
#   docker pull <이미지 명>
#       태그 명을 지정하지 않으면 latest 와 동일하게 작동한다.
#   docker pull <이미지 명>:<태그 명>
#
# 의미
#   Docker hub 에서 이미지를 다운 받는다.
#   https://hub.docker.com/search
#
# 참고
#   태그 명을 보면 "alpine" 이라는 단어가 포함된 태그명이 자주 보일 것이다.
#       -> 이미지 용량 면에서 최적화 시킨 버전이라는 뜻이다. (실무에서 많이 쓰임)
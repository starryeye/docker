#!/bin/zsh

# 명령어
#   docker image rm <이미지 id 또는 이미지 명>
#       컨테이너에서 사용 중인 이미지는 삭제 불가하다.
#   docker image rm -f <이미지 id 또는 이미지 명>
#       "실행 중"인 컨테이너에서 사용 중인 이미지는 삭제 불가하다.
#
# 의미
#   특정 이미지를 삭제한다.
#
# 참고
#   docker image rm $(docker images -q)
#   docker image rm -f $(docker images -q)
#   위 명령어를 사용하면 각 컨테이너 상태에 따른 삭제조건에 맞게 부합하는 이미지를 전체 삭제한다.
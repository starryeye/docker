#!/bin/zsh

# 명령어
#   docker logs <컨테이너 id 또는 컨테이너 명>
#       컨테이너에서 발생된 로그 출력
#   docker logs --tail <최근로그 몇줄을 조회할지 숫자> <컨테이너 id 또는 컨테이너 명>
#       최근 10줄의 로그를 조회하려면 10을 입력
#   docker logs --tail 0 -f <컨테이너 id 또는 컨테이너 명>
#       최근 로그를 조회하고 싶지 않지만, 실시간 생성되는 로그를 지속 출력하려면 -f
#
# 의미
#   컨테이너를 조회한다. (process status 의 약자)
#   CONTAINER ID(컨테이너 id), IMAGE(이미지 명 및 태그), STATUS(컨테이너 상태), NAMES(컨테이너 이름) 등이 출력된다.
#!/bin/zsh

# 명령어
#   docker run <이미지 명>:<태그 명>
#       foreground 실행
#   docker run -d <이미지 명>:<태그 명>
#       background 실행
#   docker run -d --name <원하는 컨테이너 이름> <이미지 명>:<태그 명>
#       원하는 컨테이너 명으로 background 실행
#   docker run -d -p <호스트 포트>:<컨테이너 포트> <이미지 명>:<태그 명>
#       호스트 포트와 컨테이너 포트를 연결, background 실행
#
# 의미
#   이미지를 바탕으로 컨테이너를 생성(create)한 뒤, 컨테이너를 실행(start)시킨다.
#
# 참고
#   이미지가 존재하지 않으면, docker hub 에서 다운받아서라도 작업해준다.
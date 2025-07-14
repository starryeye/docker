# RUN 에 대해 알아본다.
#
# 문법
#   RUN <[명령문...]>
#
# 의미
#   docker image 가 빌드되는 시점에 명령어를 수행


# 예시
#   ubuntu 베이스에 git 이 설치된 이미지로 만들어짐
#       이후 컨테이너 실행 시점에 sleep 5000 명령어 수행
#
# 이미지 생성
#   docker build -t ubuntu-image .
FROM ubuntu

RUN apt update && apt install -y git

ENTRYPOINT ["/bin/bash", "-c", "sleep 5000"]

# 참고 (RUN vs ENTRYPOINT)
#   RUN
#       도커 이미지 빌드 시, 이미지 안에 파일 생성, 패키지 설치 등이 필요한 경우
#           -> 실행 결과가 이미지에 반영됨 (새 레이어 생성)
#
#   ENTRYPOINT
#       컨테이너가 시작될 때 실행될 기본 명령 설정이 필요한 경우
#           -> 실행 결과는 런타임 동작 (이미지에는 반영 안 됨)
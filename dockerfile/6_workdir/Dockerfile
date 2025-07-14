# WORKDIR 에 대해 알아본다.
#
# 문법
#   WORKDIR <컨테이너 내부에서 작업 디렉토리로 사용할 절대 경로>
#
# 의미
#   WORKDIR 설정 후, 수행되는 명령어의 기본 상대 경로가 WORKDIR 로 변경된다.


# 예시
#   ubuntu 가 설치된 상태의 컨테이너가 만들어지는 이미지를 생성해주는 도커 파일
#   WORKDIR 을 "/my-dir" 로 설정
#   현재 Dockerfile 의 경로(호스트)에 존재하는 모든 파일을 컨테이너 내부 "/my-dir" 경로에 복사한다.
#   ENTRYPOINT 로 시스템 일시정지 시켜 바로 종료되지 않도록 한다.
# 이미지 생성
#   docker build -t ubuntu-image .
FROM ubuntu

WORKDIR /my-dir

COPY ./ ./

ENTRYPOINT ["/bin/bash", "-c", "sleep 5000"]

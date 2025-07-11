# COPY 에 대해 알아본다.
#
# 문법
#   COPY <호스트에 존재하는 파일의 경로> <컨테이너에서 파일이 위치할 경로>
#
# 의미
#   호스트에 존재하는 파일을 복사해서 컨테이너로 카피한다.


# 예시
#   ubuntu 가 설치된 상태의 컨테이너가 만들어지는 이미지를 생성해주는 도커 파일
#   현재 Dockerfile 의 경로(호스트)에 존재하는 README.md 파일을 "/" 경로에 복사한다.
#   ENTRYPOINT 로 시스템 일시정지 시켜 바로 종료되지 않도록 한다.
# 이미지 생성
#   docker build -t ubuntu-image .
FROM ubuntu

COPY README.md /README.md

ENTRYPOINT ["/bin/bash", "-c", "sleep 5000"]


# 참고
#   COPY *.txt /text-files/
#   위와 같이 수행할 경우 컨테이너 "/text-files/" 경로에,
#   현재 호스트 경로에 존재하는 모든 txt 확장자 파일(a.txt, b.txt) 가 복사된다.

# 참고
#   COPY ./ /
#   위와 같이 수행할 경우 현재 호스트 경로에 존재하는 모든 파일및 디렉토리가 컨테이너 "/" 경로에 복사되는데..
#   ".dockerignore" 파일에 존재하는 파일은 빼고 복사가 가능하다. (Dockerfile 이 적혀있으므로 빼고 모두가 복사됨)
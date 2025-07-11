# ENTRYPOINT 에 대해 알아본다.
#
# 문법
#   ENTRYPOINT <[명령문...]>
#
# 의미
#   컨테이너가 실행되고 바로 수행될 명령어이다.


# 예시
#   ubuntu 베이스 이미지이고 컨테이너가 실행될 때..
#       /bin/bash 프로그램으로 "echo hello ENTRYPOINT" 를 수행하라는 뜻이다.
#           -c 옵션은 bash 옵션으로 뒤 문자열을 명령어로 받아드리라는 뜻이다.
# 이미지 생성
#   docker build -t ubuntu-image .
FROM ubuntu

ENTRYPOINT ["/bin/bash", "-c", "echo hello ENTRYPOINT"]

# 참고
#   위 컨테이너를 실행하면 바로 종료된다.. 그래도 docker logs 로 hello ENTRYPOINT 가 찍힌 것을 볼 수 는 있다.


# 참고
#   바로 종료됨을 지연시키기 위해서는.. 아래와 같이 시스템을 5000 초 일시정지 되도록 만들어 볼 수 있음.
#   ENTRYPOINT ["/bin/bash", "-c", "sleep 5000"]
#   혹은..
#       ENTRYPOINT ["bash"] 로 두고 docker run -it ubuntu-image 로 실행하면 바로 쉘 진입이 되면서 종료되지 않음..
#           ENTRYPOINT ["bash"] 로 두고 -it 옵션 없이 실행하면 바로 종료됨..

# 참고
#   ENTRYPOINT ["/bin/bash"] 와 ENTRYPOINT ["bash"] 의 차이
#       bash 를 절대 경로로 실행할 것인가.. PATH 환경변수에서 bash 검색하여 실행할 것인가.. 차이이다.

# 참고
#   CMD ["bash"] 도 거의 동일한 명령어인데.. 아주 살짝의 차이가 있다.. 궁금하면 검색할 것.
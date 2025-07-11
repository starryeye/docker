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
#   docker run -d -v <호스트 디렉토리 절대경로>:<컨테이너 디렉토리 절대경로> <이미지 명>:<태그 명>
#       호스트 디렉토리가 존재하면, 컨테이너 디렉토리를 모두 삭제 후 호스트 디렉토리로 대체됨
#       호스트 디렉토리가 존재하지 않으면, 컨테이너 디렉토리의 내용을 호스트 디렉토리에 보냄
#   docker run -d -e <환경변수 설정> <이미지 명>:<태그 명>
#       컨테이너 실행 시 설정할 환경변수를 전달 할 수 있다.
#           ex. docker run -d -e MYSQL_ROOT_PASSWORD=secret -p 3306:3306 mysql
#               컨테이너 내부에서 "export" 명령어로 설정된 환경변수를 확인 할 수 있다. (mysql 의 경우 MYSQL_ROOT_PASSWORD 가 설정되지 않으면 실행조차 안됨.)
#
# 의미
#   이미지를 바탕으로 컨테이너를 생성(create)한 뒤, 컨테이너를 실행(start)시킨다.
#
# 참고
#   이미지가 존재하지 않으면, docker hub 에서 다운받아서라도 작업해준다.
#
# 예시
# mysql 이미지 버전을 올리고 싶으면.. 컨테이너 자체를 교체해야한다.
# 그러면, 컨테이너 내부 데이터도 함께 교체되어버린다.
# 그래서, 내부 저장된 데이터는 호스트에 보관하고 싶다면.. -v 옵션을 사용한다. (컨테이너 내부에 mysql 데이터는 "/var/lib/mysql" 에 저장됨)
# docker run -d -e MYSQL_ROOT_PASSWORD=secret -p 3306:3306 -v <호스트 절대경로>:/var/lib/mysql mysql
# 주의) password 도 내부 데이터에 저장되므로 컨테이너 교체와 password 변경이 한번에 안될 수 있음.

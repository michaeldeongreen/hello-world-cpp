FROM ubuntu:latest

RUN apt-get update -y  && apt-get install g++ -y

COPY *.cpp /usr/src 

WORKDIR /usr/src

RUN g++ main.cpp -o app

CMD ["./app"]
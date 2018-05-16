FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y gcc
RUN mkdir /app
WORKDIR /app
COPY main.c /app
RUN gcc -o main main.c

CMD ["/app/main"]

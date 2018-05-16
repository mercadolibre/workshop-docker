FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y gcc
RUN mkdir /app
WORKDIR /app
COPY main.c /app
RUN gcc -o main main.c

FROM progrium/busybox
COPY --from=0 /app/main /bin/main
CMD ["/bin/main"]

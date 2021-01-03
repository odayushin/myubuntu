FROM ubuntu:latest
COPY .vimrc /root/
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim curl


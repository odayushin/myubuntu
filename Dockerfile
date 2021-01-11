FROM ubuntu:latest
COPY .vimrc /root/
WORKDIR /home/work
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim curl
CMD /bin/bash
FROM ubuntu:latest
COPY .vimrc /root/
WORKDIR /home/work
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim curl unzip && \
    curl -fsSL https://deno.land/x/install/install.sh | sh && \
    echo 'export DENO_INSTALL="/root/.deno"' >> /root/.bashrc && \
    echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> /root/.bashrc
CMD /bin/bash
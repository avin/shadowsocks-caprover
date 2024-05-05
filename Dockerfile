FROM ghcr.io/shadowsocks/ssserver-rust:latest
MAINTAINER Avin Lambrero <avin.github@gmail.com>

# Define default ARG values
ARG PASSWORD=${PASSWORD}
ARG PORT=10568

# Install  and setup config file
ADD config.json /etc/shadowsocks-rust/config.json
WORKDIR /etc/shadowsocks-rust/
RUN sed -i 's/_PASSWORD_/'"$PASSWORD"'/g' config.json && \
    sed -i 's/_PORT_/'"$PORT"'/g' 3proxy.cfg

EXPOSE $PORT

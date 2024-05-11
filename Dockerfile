FROM ghcr.io/shadowsocks/ssserver-rust:v1.18.4

# Define default ARG values
ARG PASSWORD=${PASSWORD}
ARG PORT=10568

# Install  and setup config file
ADD config.json /etc/shadowsocks-rust/config.json
ADD entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
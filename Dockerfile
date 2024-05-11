FROM ghcr.io/shadowsocks/ssserver-rust:v1.18.4

# Define default ARG values
ARG PASSWORD=${PASSWORD}
ARG PORT=10568

# Install  and setup config file
ADD config.json /etc/shadowsocks-rust/my_config.json
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD [ "ssserver", "--log-without-time", "-c", "/etc/shadowsocks-rust/my_config1.json" ]
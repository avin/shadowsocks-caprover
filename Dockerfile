FROM ghcr.io/shadowsocks/ssserver-rust:v1.18.4

# Install  and setup config file
ADD config.json /etc/shadowsocks-rust/config.json
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
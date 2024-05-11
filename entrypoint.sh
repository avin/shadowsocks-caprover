#!/bin/sh

CONFIG=/etc/shadowsocks-rust/config.json

echo $CONFIG

/bin/sed -i "s|#PORT#|$PORT|g" 10568 $CONFIG
/bin/sed -i "s|#PASSWORD#|$PASSWORD|g" $CONFIG

ssserver --log-without-time -c $CONFIG

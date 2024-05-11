#!/bin/sh

CONFIG=/etc/shadowsocks-rust/my_config.json

sed -i "s|#PORT#|$PORT|g" $CONFIG
sed -i "s|#PASSWORD#|$PASSWORD|g" $CONFIG

ssserver --log-without-time -c $CONFIG

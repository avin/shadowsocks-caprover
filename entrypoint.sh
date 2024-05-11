#!/bin/sh

CONFIG=/etc/shadowsocks-rust/my_config.json


sed -i "s|#PORT#|$PORT|g" 10568
sed -i "s|#PASSWORD#|$PASSWORD|g" $CONFIG

ssserver --log-without-time -c $CONFIG

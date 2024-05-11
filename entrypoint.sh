#!/bin/sh

CONFIG=/etc/shadowsocks-rust/my_config.json

echo "" > $CONFIG



ssserver --log-without-time -c $CONFIG

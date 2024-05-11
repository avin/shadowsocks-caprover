# Shadowsocks for CapRover

[Shadowsocks-rust](https://github.com/shadowsocks/shadowsocks-rust) app configuration for [CapRover](https://caprover.com/)

## Configure app

Add Environmental Variables

* `PASSWORD` = `secretpassword` (use your own password)


Add Port Mapping

```
Server Port : 10568 | Container Port : 10568
```

Add domains

```
8888.frp.server.com
static.frp.server.com
```


## Client

Use client
https://github.com/shadowsocks/shadowsocks-rust/releases

Create `config.json`

```json5
{
    "server": "YOUR_SERVER_IP",
    "server_port": 10000,
    "password": "VALUE_OF_PASSWORD",
    "method": "chacha20-ietf-poly1305",
    "local_address": "127.0.0.1",
    "local_port": 25080,
    "locals": [
        {            
            "protocol": "http",            
            "local_address": "127.0.0.1",
            "local_port": 25180
        },
    ]
}
```

Run client `sslocal -c ./config.json`

Use `127.0.0.1:25180` as HTTP proxy in any app
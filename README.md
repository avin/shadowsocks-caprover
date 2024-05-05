# shadowsocks-caprover

## Setup app

1. Create [caprover](https://caprover.com/) app
2. Go to `HTTP Settings` and set `Do not expose as web-app` to on
3. Go to `App Configs`
4. Add Environmental Variables: `PASSWORD` with your data
5. Add Port Mapping [`10000` -> `10568`] (use any port instead of 10000)


## Client (your local env)

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
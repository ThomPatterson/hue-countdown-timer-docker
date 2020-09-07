# Hue Countdown Timer Docker

Docker image for [hue-countdown-timer](https://github.com/ThomPatterson/hue-countdown-timer).

## Specifying Config

Create an ENV variable called CONFIG that contains the JSON content of [config.js](https://github.com/ThomPatterson/hue-countdown-timer/blob/master/config.js) as a single-line escaped JSON.

`ENV CONFIG={\"HUE_BRIDGE_ADDRESS\":\"192.168.1.1\",\"HUE_BRIDGE_USERNAME\":\"FAKEsdfLKJEFsdfglkjsdfjlk585dfld84\",\"DEFAULT_DIRECTION\":\"forward\",\"WHITE\":{\"on\":true,\"bri\":254,\"xy\":[0.4153,0.3717]},\"GREEN\":{\"on\":true,\"bri\":254,\"xy\":[0.172,0.7446]},\"YELLOW\":{\"on\":true,\"bri\":254,\"xy\":[0.477,0.5042]},\"RED\":{\"on\":true,\"bri\":254,\"xy\":[0.7004,0.2995]},\"ROOM_LIGHT_ORDER_OVERRIDES\":[{\"roomName\":\"Gaming\",\"lightsOrder\":[8,7,22,35,9]}]}`

You can use a [tool like this](http://rantz.net/tools/stringify/index.php) to stringify the object, and then [another tool](https://codebeautify.org/json-escape-unescape) to escape it.

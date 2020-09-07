FROM mhart/alpine-node:12.12

WORKDIR /usr/app

RUN apk update && \
    apk upgrade && \
    apk add git tzdata && \
    git clone https://github.com/ThomPatterson/hue-countdown-timer.git && \
    cd hue-countdown-timer && \
    npm install && \
    apk del git && \
    rm -rf /tmp/npm*

WORKDIR /usr/app/hue-countdown-timer

ENV CONFIG={\"HUE_BRIDGE_ADDRESS\":\"192.168.1.1\",\"HUE_BRIDGE_USERNAME\":\"FAKEsdfLKJEFsdfglkjsdfjlk585dfld84\",\"DEFAULT_DIRECTION\":\"forward\",\"WHITE\":{\"on\":true,\"bri\":254,\"xy\":[0.4153,0.3717]},\"GREEN\":{\"on\":true,\"bri\":254,\"xy\":[0.172,0.7446]},\"YELLOW\":{\"on\":true,\"bri\":254,\"xy\":[0.477,0.5042]},\"RED\":{\"on\":true,\"bri\":254,\"xy\":[0.7004,0.2995]},\"ROOM_LIGHT_ORDER_OVERRIDES\":[{\"roomName\":\"Gaming\",\"lightsOrder\":[8,7,22,35,9]}]}

ENV TZ=America/Chicago

EXPOSE 8080

CMD ["npm", "start"]

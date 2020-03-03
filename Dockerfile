FROM alpine:latest
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps ca-certificates curl libuv bash

ADD /v2/v2ray /v2/v2ray
RUN chmod +x /v2/v2ray

ADD /v2/v2ctl /v2/v2ctl
RUN chmod +x /v2/v2ctl

ADD /v2/ssr-server /ssr/ssr-server
RUN chmod +x /ssr/ssr-server

ADD /v2/config.json /ssr/config.json
RUN chmod +x /ssr/config.json

ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT /configure.sh
EXPOSE 80 666

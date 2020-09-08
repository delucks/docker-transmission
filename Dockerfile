FROM arm64v8/alpine:3.12

LABEL maintainer="delucks"

RUN apk add --no-cache \
	transmission-cli \
	transmission-daemon

# ports and volumes
EXPOSE 9091 51413
VOLUME /config /downloads /watch

ENTRYPOINT /usr/bin/transmission-daemon -g /config -c /watch -f

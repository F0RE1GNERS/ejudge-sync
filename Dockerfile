FROM alpine:3.8

RUN apk add --no-cache lsyncd rsync openssh-client && mkdir -p /tmp /root
WORKDIR /root
ENTRYPOINT ["lsyncd", "/root/lsyncd.conf"]

FROM alpine:3.11

MAINTAINER Alexander Olofsson <ace@haxalot.com>

# ARG VERSION=4.5.1.1-r1

RUN apk add --no-cache --update \
      coturn \
      # coturn==$VERSION \
 && rm -rf /var/cache/apk/*

ADD coturn.sh /coturn
ADD shellexpand.sh /usr/local/bin/shell-expand

ENTRYPOINT [ "/coturn" ]

FROM java:8u111-jdk-alpine

MAINTAINER remoting remoting@qq.com

RUN apk add --update --no-cache tzdata bash \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && rm -r /var/cache/apk \
    && rm -r /usr/share/man
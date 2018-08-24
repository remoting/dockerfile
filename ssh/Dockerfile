FROM alpine:latest
MAINTAINER remoting remoting@qq.com

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add --no-cache --update-cache bash curl vim wget openssh

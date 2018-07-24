FROM alpine:latest
MAINTAINER remoting remoting@qq.com

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add --no-cache --update-cache bash s6 curl
ADD s6 /etc/s6

CMD ["s6-svscan", "/etc/s6"]

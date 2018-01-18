FROM alpine:latest
MAINTAINER remoting remoting@qq.com

RUN apk add --no-cache --update-cache bash s6
ADD s6 /etc/s6

CMD ["s6-svscan", "/etc/s6"]
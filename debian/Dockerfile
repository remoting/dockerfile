FROM debian:11

WORKDIR /root

ADD init.sh /root/ 

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && chmod +x init.sh && ./init.sh
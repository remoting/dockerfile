FROM centos:7

MAINTAINER liyong remoting@qq.com

ADD go1.14.2.linux-amd64.tar.gz /usr/local/
ADD node-v12.16.3-linux-x64.tar.xz /usr/local/

COPY config /root/.ssh/

ENV NODE_HOME=/usr/local/node \
    GOPROXY="https://mirrors.aliyun.com/goproxy/,direct" \
    GOROOT=/usr/local/go

ENV PATH=$PATH:$GOROOT/bin:$NODE_HOME/bin

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && ln -s /usr/local/node-v12.16.3-linux-x64 /usr/local/node \
  && npm install -g yarn cnpm \
  && yum install openssl git tree unzip zip vim wget -y \
  && chmod 600 /root/.ssh/config \
  && wget -O /usr/local/bin/gf https://goframe.org/cli/linux_amd64/gf \
  && chmod +x /usr/local/bin/gf
FROM centos:7

WORKDIR /root

ADD node-v8.17.0-linux-x64.tar.gz /usr/local/

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && mv /usr/local/node-v8.17.0-linux-x64 /usr/local/node \
  && ln -s /usr/local/node/bin/node /usr/local/bin \
  && ln -s /usr/local/node/bin/npm /usr/local/bin \
  && npm install -g cnpm pm2 \
  && ln -s /usr/local/node/lib/node_modules/pm2/bin/pm2 /usr/local/bin \
  && ln -s /usr/local/node/lib/node_modules/cnpm/bin/cnpm /usr/local/bin \
  && ln -s /usr/local/node/lib/node_modules/pm2/bin/pm2-runtime /usr/local/bin

RUN yum install iproute -y && yum clean all
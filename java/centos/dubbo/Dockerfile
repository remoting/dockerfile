FROM centos:centos6

MAINTAINER remoting <remoting@qq.com>

ADD /tools/jdk-8u60-linux-x64.tar.gz /java/
ADD /tools/dubbo.tar.gz /java/dubbo/

RUN mkdir -p /java
RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime



ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV JAVA_HOME /java/jdk1.8.0_60
ENV PATH=$PATH:$JAVA_HOME/bin


VOLUME ["/data"]


CMD ["/data/bin/start.sh"]

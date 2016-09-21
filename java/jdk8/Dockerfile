FROM centos:centos7

MAINTAINER remoting remoting@qq.com

RUN yum install zip unzip wget tar -y \
	&& wget -O /opt/dockerize.tar.gz https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz \
	&& tar -zxvf /opt/dockerize.tar.gz -C /usr/bin/ \
	&& wget -O /opt/jdk.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz \
	&& tar -zxvf /opt/jdk.tar.gz -C /opt/java \
	&& cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && chmod u+x /usr/bin/dockerize \
    && rm -rf /opt/jdk.tar.gz \
    && rm -rf /opt/dockerize.tar.gz \
    && yum clean all
 
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    JAVA_HOME=/opt/java/jdk1.8.0_60

ENV PATH=$PATH:$JAVA_HOME/bin \
    CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

FROM centos:centos7

MAINTAINER liyong remoting@qq.com

ENV JAVA_VERSION=8 \
    JAVA_UPDATE=92 \
    JAVA_BUILD=14

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && yum install zip unzip wget -y \
    && cd /opt && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz \
    && tar -xzf "jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" \
    && rm -rf /opt/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}/*src.zip \
    && yum clean all
 
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    JAVA_HOME=/opt/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}
ENV PATH=$PATH:$JAVA_HOME/bin


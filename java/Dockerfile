FROM centos:latest

MAINTAINER liyong 80806343@yonghui.cn

ADD jdk-8u171-linux-x64.tar.gz /opt
ADD apache-maven-3.5.4-bin.tar.gz /opt
RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    JAVA_HOME=/opt/jdk1.8.0_171 \
    MAVEN_HOME=/opt/apache-maven-3.5.4

ENV PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin

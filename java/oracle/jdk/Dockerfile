FROM centos:centos6

MAINTAINER remoting <remoting@qq.com>

RUN mkdir /java && cd /java \
    && yum install -y wget \
    && yum install -y tar \
    && cd /java && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz \
    && cd /java && tar zxvf jdk-8u60-linux-x64.tar.gz \
    && cd /java && rm -rf jdk-8u60-linux-x64.tar.gz \
    && yum clean all


ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV JAVA_HOME /java/jdk1.8.0_60
ENV CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH=$PATH:$JAVA_HOME/bin


RUN useradd java && chown java:java /java

VOLUME ["/data"]

EXPOSE 22
EXPOSE 80
EXPOSE 8080
EXPOSE 20880

USER java

CMD ["/bin/bash"]

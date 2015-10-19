FROM centos:centos6

MAINTAINER remoting <remoting@qq.com>

RUN mkdir -p /java

ADD /tools/jdk-8u60-linux-x64.tar.gz /java/

  

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV JAVA_HOME /java/jdk1.8.0_60
ENV CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH=$PATH:$JAVA_HOME/bin




VOLUME ["/data"]


CMD ["/data/bin/start.sh"]
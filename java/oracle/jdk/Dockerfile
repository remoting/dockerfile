FROM centos

MAINTAINER remoting <remoting@qq.com>
ADD http://jdk-8u60-linux-x64.tar /java
RUN cd /java && tar zxvf jdk-8u60-linux-x64.tar

ENV LANG en_US.UTF-8
ENV JAVA_HOME /java/jdk1.8.0_60
ENV CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH=$PATH:$JAVA_HOME/bin

CMD ["/bin/bash"]

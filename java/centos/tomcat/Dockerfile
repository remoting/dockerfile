FROM centos:centos6

MAINTAINER remoting <remoting@qq.com>

RUN mkdir -p /java /data/mw_logs

ADD /tools/jdk-8u60-linux-x64.tar.gz /java/
ADD /tools/apache-tomcat-7.0.64.tar.gz /java/
RUN sed -i 's/webapps/\/data\/webapps/' /java/apache-tomcat-7.0.64/conf/server.xml \
    && sed -i 's/port="8080"/port="${DOCKER_PORT}"/' /java/apache-tomcat-7.0.64/conf/server.xml \
    && sed -i 's/protocol="HTTP\/1.1"/protocol="org.apache.coyote.http11.Http11NioProtocol"/' /java/apache-tomcat-7.0.64/conf/server.xml \
    && sed -i 's/\/sh/\/sh\nJAVA_OPTS="-DDOCKER_PORT=$DOCKER_PORT"/' /java/apache-tomcat-7.0.64/bin/catalina.sh

RUN cd /java/apache-tomcat-7.0.64 && rm -rf logs && ln -s /data/mw_logs logs

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV JAVA_HOME /java/jdk1.8.0_60
ENV PATH=$PATH:$JAVA_HOME/bin


VOLUME ["/data"]


CMD ["/data/bin/start.sh"]
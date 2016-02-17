FROM centos:centos6

MAINTAINER remoting <remoting@qq.com>

RUN mkdir -p /java /data/mw_logs
RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD /tools/jdk-8u60-linux-x64.tar.gz /java/
ADD /tools/apache-tomcat-7.0.64.tar.gz /java/

RUN sed -i 's/webapps/\/data\/webapps/' /java/apache-tomcat-7.0.64/conf/server.xml \
    && sed -i 's/port="8080"/port="${DOCKER_PORT_HTTP}"/' /java/apache-tomcat-7.0.64/conf/server.xml \
    && sed -i 's/protocol="HTTP\/1.1"/protocol="org.apache.coyote.http11.Http11NioProtocol"/' /java/apache-tomcat-7.0.64/conf/server.xml \
    && sed -i 's/\/sh/\/sh\nJAVA_OPTS="-DDOCKER_PORT_HTTP=$DOCKER_PORT_HTTP -Djava.rmi.server.hostname=$DOCKER_IP -Dcom.sun.management.jmxremote  -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.port=$DOCKER_PORT_JMX1 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.rmi.port=$DOCKER_PORT_JMX2 -Xloggc:\/data\/logs\/$DOCKER_CONTAINER_ID.gc.log -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+UseCMSCompactAtFullCollection  -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=70 "/' /java/apache-tomcat-7.0.64/bin/catalina.sh


#JAVA_OPTS="-Djava.rmi.server.hostname=192.168.31.213 -Dcom.sun.management.jmxremote  -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.port=9202 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.rmi.port=9203"


RUN cd /java/apache-tomcat-7.0.64 && rm -rf logs && ln -s /data/mw_logs logs

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV JAVA_HOME /java/jdk1.8.0_60
ENV PATH=$PATH:$JAVA_HOME/bin


VOLUME ["/data"]


CMD ["/data/bin/start.sh"]

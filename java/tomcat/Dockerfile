FROM remoting/java:8

MAINTAINER remoting remoting@qq.com

WORKDIR /opt

RUN curl -o /opt/apache-tomcat-8.0.37.tar.gz http://apache.fayea.com/tomcat/tomcat-8/v8.0.37/bin/apache-tomcat-8.0.37.tar.gz \
    && tar -zxvf apache-tomcat-8.0.37.tar.gz \
    && rm -rf apache-tomcat-8.0.37.tar.gz \
    && chmod +x /opt/apache-tomcat-8.0.37/bin/catalina.sh \
    && mkdir -p /data/webapps \
    && sed -i 's/webapps/\/data\/webapps/' /opt/apache-tomcat-8.0.37/conf/server.xml \
    && sed -i 's/port="8080"/port="8080" URIEncoding="UTF-8"/' /opt/apache-tomcat-8.0.37/conf/server.xml \
    && sed -i 's/protocol="HTTP\/1.1"/protocol="org.apache.coyote.http11.Http11NioProtocol"/' /opt/apache-tomcat-8.0.37/conf/server.xml \
    && sed -i 's/bin\/sh/bin\/sh\nJAVA_OPTS=" -Duser.timezone=GMT+8 "/' /opt/apache-tomcat-8.0.37/bin/catalina.sh

CMD ["/opt/apache-tomcat-8.0.37/bin/catalina.sh","run"]
FROM hub./base/java:8_60

WORKDIR /opt

RUN curl -o /opt/apache-tomcat-8.0.33.tar.gz xxxxx.tar.gz \
    && tar zxvf apache-tomcat-8.0.33.tar.gz \
    && rm -rf apache-tomcat-8.0.33.tar.gz \
    && chmod +x /opt/apache-tomcat-8.0.33/bin/catalina.sh \
    && mkdir -p /data/webapps \
    && sed -i 's/webapps/\/data\/webapps/' /opt/apache-tomcat-8.0.33/conf/server.xml \
    && sed -i 's/port="8080"/port="8080" URIEncoding="UTF-8"/' /opt/apache-tomcat-8.0.33/conf/server.xml \
    && sed -i 's/protocol="HTTP\/1.1"/protocol="org.apache.coyote.http11.Http11NioProtocol"/' /opt/apache-tomcat-8.0.33/conf/server.xml \
    && sed -i 's/bin\/sh/bin\/sh\nJAVA_OPTS=" -Duser.timezone=GMT+8 "/' /opt/apache-tomcat-8.0.33/bin/catalina.sh

CMD ["/opt/apache-tomcat-8.0.33/bin/catalina.sh","run"]
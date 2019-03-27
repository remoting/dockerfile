FROM registry.dev.chelizitech.com/public/centos:7

MAINTAINER chetailian

ADD dotnet-sdk-2.1.505-linux-x64.tar.gz /opt/netcore

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && yum install libunwind icu zip unzip wget tar -y --nogpgcheck

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    DOTNET_ROOT=/opt/netcore

ENV PATH=$PATH:$DOTNET_ROOT

RUN dotnet --info && yum clean all

FROM centos:7
MAINTAINER J.P. Klousia <klousiaj>

# install curl so we can
RUN yum install -y curl wget unzip; yum upgrade -y; yum update -y;  yum clean all

# get Oracle java rather than the OpenJDK version
ENV JDK_VERSION 7u79
ENV JDK_BUILD_VERSION b15
RUN curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && rpm -i jdk-$JDK_VERSION-linux-x64.rpm; rm -f jdk-$JDK_VERSION-linux-x64.rpm; yum clean all
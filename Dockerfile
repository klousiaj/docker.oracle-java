FROM debian:wheezy
MAINTAINER J.P. Klousia <klousiaj>

# install curl so we can
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		curl wget unzip \
	&& rm -rf /var/lib/apt/lists/*

# get Oracle java rather than the OpenJDK version
ENV JDK_VERSION 7u79
ENV JDK_BUILD_VERSION b15
RUN curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && rpm -i jdk-$JDK_VERSION-linux-x64.rpm; rm -f jdk-$JDK_VERSION-linux-x64.rpm
#
#  Demo for testing perl script
FROM ubuntu
MAINTAINER Michael Shamberger <shambergerm at nospam gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git python make m4 pkg-config dh-autoreconf libssl-dev python-mysqldb 
RUN apt-get install -y php5-mysql libapache2-mod-php5 php5-gd  

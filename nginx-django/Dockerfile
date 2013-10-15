FROM ubuntu
MAINTAINER Michael Shamberger <shambergerm at nospam gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install dialog net-tools lynx nano wget
RUN apt-get -y install python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update

RUN apt-get -y install nginx

RUN wget -O /etc/nginx/sites-available/default https://raw.github.com/mshamber/dockerfile/master/nginx-django/default
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /var/www

EXPOSE 80

CMD service start && nginx

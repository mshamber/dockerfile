FROM ubuntu
MAINTAINER Michael Shamberger <shambergerm at nospam gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# install general tools
RUN apt-get -y install dialog net-tools lynx wget vim-tiny nano

# install python
RUN apt-get -y install python-software-properties python-pip
RUN apt-get -y install python-virtualenv

# install nginx
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get -y install nginx
RUN wget -O /etc/nginx/sites-available/default https://raw.github.com/mshamber/dockerfile/master/nginx-django/default
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /var/www

# install django + pinax
ADD ./django_pinax.sh /tmp/django_pinax.sh
RUN chmod 755 /tmp/django_pinax.sh
# can't run this now since asking for information about sqllite db admin passsword
#RUN /bin/sh /tmp/django_pinax.sh

EXPOSE 80
EXPOSE 8000

CMD service start && nginx

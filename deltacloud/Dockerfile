FROM ubuntu
MAINTAINER Michael Shamberger <shambergerm at nospam gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install ruby1.9.1-full
RUN apt-get -y install dialog net-tools lynx nano wget make
RUN apt-get -y install g++
RUN apt-get -y install libxml++2.6-dev libxml2-dev
RUN apt-get -y install libxslt1.1 libxslt-dev
RUN apt-get -y install sqlite libsqlite3-dev
RUN gem install thin sinatra rack-accept rest-client sinatra-content-for nokogiri
RUN apt-get update

RUN ln -s /var/lib/gems/1.9.1/gems/deltacloud-core-1.1.3/bin/deltacloudd /usr/bin/deltacloudd

EXPOSE 3001

#CMD ["/usr/bin/deltacloudd -i mock"]

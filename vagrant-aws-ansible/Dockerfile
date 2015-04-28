FROM ubuntu:14.04
MAINTAINER RedJack, LLC


ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y software-properties-common \
 && apt-add-repository -y ppa:ansible/ansible \
 && apt-get update \
 && apt-get install -y ssh build-essential ansible rsync git \                       
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb \
 && dpkg -i vagrant_1.7.2_x86_64.deb && rm vagrant_1.7.2_x86_64.deb
    
RUN wget \
    https://raw.githubusercontent.com/rubygems/rubygems/master/lib/rubygems/ssl_certs/AddTrustExternalCARoot-2048.pem \
 && cp AddTrustExternalCARoot-2048.pem \
       /opt/vagrant/embedded/lib/ruby/2.0.0/rubygems/ssl_certs/ \
 && /opt/vagrant/embedded/bin/gem update --no-document --system \
 && /opt/vagrant/embedded/bin/gem install --no-rdoc --no-ri  ffi -v '1.9.8'

RUN vagrant plugin install vagrant-aws
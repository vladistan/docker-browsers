FROM ubuntu:precise
MAINTAINER RedJack, LLC

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq gcc python python-dev python-pip --no-install-recommends && \
    apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install ansible


FROM ansible/ubuntu14.04-ansible:stable
MAINTAINER Mike Nichols <nichols.mike.s@gmail.com>

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get -y update

ADD ./ansible /ansible/
ADD inventory /etc/ansible/hosts
WORKDIR /ansible/
RUN ansible-playbook --syntax-check --list-tasks /ansible/site.yml
RUN ansible-playbook /ansible/site.yml -c local

# Try to shrink
RUN apt-get clean
RUN apt-get autoremove -y

# vnc
EXPOSE 5900:5900

# chrome remote debugger port
EXPOSE 9222:9222

# selenium
EXPOSE 4444:4444

ENTRYPOINT ["/usr/bin/xvfb-run"]
#ENTRYPOINT ["/bin/bash"]


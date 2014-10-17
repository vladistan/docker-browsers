FROM ansible/ubuntu14.04-ansible
MAINTAINER Mike Nichols <nichols.mike.s@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN echo "deb http://security.ubuntu.com/ubuntu trusty-security main universe" >> /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates main universe" >> /etc/apt/sources.list

ADD . ./playbooks
RUN ansible-playbook ./playbooks/site.yml

# Try to shrink
RUN apt-get clean
RUN apt-get autoremove -y

RUN apt-get -y update

# ENTRYPOINT ["sh", "/home/root/scripts/simple.sh"]
# ENTRYPOINT ["/usr/bin/xvfb-run"]
ENTRYPOINT ["/bin/bash"]

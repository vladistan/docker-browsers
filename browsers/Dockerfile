FROM ansible/ubuntu14.04-ansible:stable
MAINTAINER Mike Nichols <nichols.mike.s@gmail.com>

RUN apt-get -y update

ADD ./ansible /ansible/
ADD inventory /etc/ansible/hosts
WORKDIR /ansible/
RUN ansible-playbook --syntax-check --list-tasks /ansible/site.yml
RUN ansible-playbook /ansible/site.yml -c local

# Try to shrink
RUN apt-get clean
RUN apt-get autoremove -y
ENTRYPOINT ["/bin/bash"]


FROM ubuntu:precise
MAINTAINER Mike Nichols <nichols.mike.s@gmail.com>

RUN apt-get update -y && \
    apt-get install -y python python-dev python-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install ansible
#RUN ansible-galaxy install \
#    Ansibles.hostname \
#    Ansibles.apt \
#    Ansibles.build-essential \
#    Ansibles.perl \
#    Ansibles.monit \
#    ANXS.nginx

WORKDIR /
ENV PATH /usr/local/bin:$PATH

COPY ./ansible /ansible/
COPY inventory /etc/ansible/hosts
WORKDIR /ansible/
RUN ansible-playbook --syntax-check --list-tasks /ansible/site.yml
RUN ansible-playbook /ansible/site.yml -c local


# Try to shrink
RUN apt-get clean
RUN apt-get autoremove -y

# chrome remote debugger port
EXPOSE 9222:9222

EXPOSE 5900:5900

# selenium
EXPOSE 4444:4444

WORKDIR /

# ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/xvfb-run","-e","xvfberr.log","-a"]
CMD []


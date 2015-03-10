FROM redjack/node:0.0.1-alpha1
MAINTAINER RedJack, LLC



WORKDIR /
ENV PATH /usr/local/bin:$PATH

COPY ./ansible /ansible/
RUN mkdir -p /etc/ansible
RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts
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

ENTRYPOINT ["/usr/bin/xvfb-run","-e","xvfberr.log","-a"]
CMD []


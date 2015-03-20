# We use Ubuntu 12.04 (precise) as our base image due to problems with Xvfb in
# Docker on Ubuntu 14.04 (trusty)
FROM ubuntu:precise
MAINTAINER RedJack, LLC

ENV NODE_VERSION stable
ENV PATH /usr/local/bin:$PATH

# Install build dependencies for Nave
RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    build-essential \
    curl \
    git \
  && rm -rf /var/lib/apt/lists/*

# Install Nave
RUN curl -f -o /usr/local/bin/nave https://raw.githubusercontent.com/isaacs/nave/master/nave.sh
RUN chmod a+x /usr/local/bin/nave

# Build/install NodeJS
RUN nave usemain $NODE_VERSION

# Add SSH host key for Github.com
RUN mkdir -p ~/.ssh
RUN echo github.com,192.30.252.131 ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ== > ~/.ssh/known_hosts
FROM ubuntu:xenial
LABEL maintainer "Rishabh Gupta <r.g.gupta@outlook.com>"

# Tell debconf to run in non-interactive mode
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	sudo \
	net-tools \
	wget \
	--no-install-recommends

RUN apt-get update && apt-get -y install \
	git \
	build-essential \
	--no-install-recommends

RUN apt-get install -y \
	libasound2 \
        libatk1.0-0 \
        libcairo2 \
        libcups2 \
        libexpat1 \
        libfontconfig1 \
        libfreetype6 \
        libgtk2.0-0 \
        libpango-1.0-0 \
        libx11-xcb1 \
        libxcomposite1 \
        libxcursor1 \
        libxdamage1 \
        libxext6 \
        libxfixes3 \
        libxi6 \
        libxrandr2 \
        libxrender1 \
        libxss1 \
        libxtst6 \
        --no-install-recommends

# download and extract pycharm
RUN wget -O /opt/pycharm.tar.gz https://download.jetbrains.com/python/pycharm-community-2018.1.tar.gz
RUN tar -xvzf /opt/pycharm.tar.gz

# install python3 pip
RUN sudo apt-get install -y python3-pip
RUN sudo pip3 install virtualenv

#WORKDIR /data
ENV SHELL=/bin/bash

RUN groupadd -g 1999 docker_data
RUN useradd -ms /bin/bash newuser && usermod -aG sudo,docker_data newuser
RUN echo newuser:password | chpasswd
USER newuser
WORKDIR /home/newuser

ENV HOME /home/newuser

# ENTRYPOINT [ "code", "--wait" ]
# ENTRYPOINT ["code", "--wait", "&&", "tail" , "-f",  "/dev/null"]
# ENTRYPOINT ["/bin/bash"]
ENTRYPOINT [ "bash", "/pycharm-community-2018.1/bin/pycharm.sh" ]

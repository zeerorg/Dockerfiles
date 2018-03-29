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
	--no-install-recommends

# Add the vscode debian repo
RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | apt-key add -
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list

RUN apt-get update && apt-get -y install \
	code \
	git \
	libgtk2.0-0 \
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

# Install latest nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
	sudo apt-get update && \ 
	sudo apt-get install -y nodejs yarn


#WORKDIR /data
ENV SHELL=/bin/bash

RUN useradd -ms /bin/bash newuser && usermod -aG sudo newuser
RUN echo newuser:password | chpasswd
USER newuser
WORKDIR /home/newuser

ENV HOME /home/newuser

COPY start.sh /usr/bin/start.sh

ENTRYPOINT [ "/bin/bash", "/usr/bin/start.sh" ]

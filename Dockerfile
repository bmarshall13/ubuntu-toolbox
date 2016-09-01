FROM ubuntu:xenial

RUN apt-get update -y \
 && apt-get -y install \
	    command-not-found \
	    curl \
	    dialog \
	    iputils-ping \
	    less \
	    ncurses-term \
	    net-tools \
	    vim

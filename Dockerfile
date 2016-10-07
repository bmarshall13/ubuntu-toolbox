FROM ubuntu:xenial

RUN apt-get update -y && apt-get -y install \
      command-not-found \
      curl \
      dialog \
      iproute2 \
      iptables \
      iputils-ping \
      less \
      man-db \
      ncurses-term \
      net-tools \
      tcpdump \
      vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

FROM ubuntu:xenial

RUN apt-get update -y && apt-get -y install \
      awscli \
      command-not-found \
      curl \
      dialog \
      dnsutils \
      ebtables \
      iproute2 \
      iptables \
      iputils-ping \
      jq \
      less \
      man-db \
      manpages \
      manpages-dev \
      ncurses-term \
      net-tools \
      netcat-openbsd \
      tcpdump \
      vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

FROM alpine:3.12

ARG ARCH="amd64"
ARG KOKOTAP_VERSION="0.61"

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /tmp

RUN \
  apk -U upgrade \
  && apk add \
  arping \
  bash \
  bash-completion \
  ca-certificates \
  bind-tools \
  curl \
  dhcping \
  git \
  jq \
  less \
  mtr \
  nmap \
  nmap-ncat \
  openssh-client \
  tcpdump \
  tshark \
  && rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

# Kokotap
RUN \
  curl -fsSLO https://github.com/redhat-nfvpe/kokotap/releases/download/v${KOKOTAP_VERSION}/kokotap_${KOKOTAP_VERSION}_linux_x86_64.tar.gz && \
  tar xvf kokotap_${KOKOTAP_VERSION}_linux_x86_64.tar.gz -C /usr/local/bin

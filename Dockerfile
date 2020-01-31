FROM alpine:3.12

# Automatically populated by `docker build`.
ARG TARGETARCH
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
  [[ "$TARGETARCH" == "amd64" ]] && \
  curl -fsSLO https://github.com/redhat-nfvpe/kokotap/releases/download/v${KOKOTAP_VERSION}/kokotap_${KOKOTAP_VERSION}_linux_x86_64.tar.gz && \
  tar xvf kokotap_${KOKOTAP_VERSION}_linux_x86_64.tar.gz -C /usr/local/bin

CMD ["/bin/sh", "-c", "sleep 1000000000"]

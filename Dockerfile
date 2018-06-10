FROM ubuntu:16.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install strongswan-plugin-eap-mschapv2 moreutils strongswan iptables uuid-runtime openssl \
    && rm -rf /var/lib/apt/lists/*

ADD ./bin/* /usr/bin/
ADD ./config/ipsec.conf /ipsec.conf

CMD /usr/bin/run

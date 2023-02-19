FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y dnsmasq

COPY ./templates/dnsmasq.conf /etc/dnsmasq.conf

CMD ["/usr/sbin/dnsmasq", "-d", "-k", "--enable-dbus", "--user=dnsmasq", "--pid-file"]
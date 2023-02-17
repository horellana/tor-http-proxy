FROM debian:bookworm

RUN apt update \
    && apt -y upgrade \
    && apt install -y dnsmasq

COPY ./templates/dnsmasq.conf /etc/dnsmasq.conf

CMD ["/usr/sbin/dnsmasq", "-d", "-k", "--enable-dbus", "--user=dnsmasq", "--pid-file"]
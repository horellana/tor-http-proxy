FROM debian:bookworm

RUN apt update \
    && apt upgrade -y \
    && apt install -y tor \
    && apt install -y obfs4proxy

COPY templates/torrc /etc/tor/torrc

CMD ["/usr/bin/tor", "--runasdaemon", "0", "--defaults-torrc", "/usr/share/tor/defaults-torrc", "-f", "/etc/tor/torrc"]
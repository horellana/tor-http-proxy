FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y tor \
    && apt-get install -y obfs4proxy

COPY ./templates/torrc-dns /etc/tor/torrc

CMD ["/usr/bin/tor", "--runasdaemon", "0", "--defaults-torrc", "/usr/share/tor/defaults-torrc", "-f", "/etc/tor/torrc"]
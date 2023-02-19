FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y privoxy

COPY ./templates/privoxy.conf /etc/privoxy/config

CMD ["/usr/sbin/privoxy", "--no-daemon", "--pidfile", "/run/privoxy.pid", "--user", "daemon.daemon", "/etc/privoxy/config"]
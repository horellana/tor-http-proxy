FROM debian:bookworm

RUN apt update \
    && apt -y upgrade \
    && apt install -y privoxy

COPY ./templates/privoxy.conf /etc/privoxy/config

CMD ["/usr/sbin/privoxy", "--no-daemon", "--pidfile", "/run/privoxy.pid", "--user", "daemon.daemon", "/etc/privoxy/config"]
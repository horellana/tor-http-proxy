FROM debian:bookworm

RUN apt update \
    && apt -y upgrade \
    && apt install -y squid

COPY ./templates/squid.conf /etc/squid/squid.conf
COPY ./docker-files/squid/entrypoint.sh ./entrypoint.sh

CMD ["sh", "entrypoint.sh"]
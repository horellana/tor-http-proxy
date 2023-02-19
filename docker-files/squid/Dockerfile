FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y squid

COPY ./templates/squid.conf /etc/squid/squid.conf
COPY ./docker-files/squid/entrypoint.sh ./entrypoint.sh

CMD ["sh", "entrypoint.sh"]
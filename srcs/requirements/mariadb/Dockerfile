FROM debian:latest

RUN apt-get update && \
    apt-get install -y mariadb-server wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY conf/query.sql /tmp/query.sql
COPY conf/script.sh /tmp/script.sh
RUN chmod 777 /tmp/script.sh

CMD ["/tmp/script.sh"]

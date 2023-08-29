FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY conf/mysql.conf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/query.sql /tmp/query.sql
COPY conf/script.sh /tmp/script.sh
RUN chmod 777 /tmp/script.sh

CMD ["/tmp/script.sh"]

FROM debian:latest

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY conf/my.conf /etc/mysql/my.cnf

COPY conf/script.sql /tmp/script.sql

RUN 'cat /tmp/script.sql \
| sed s/SQL_USER/$SQL_USER/g \
| sed s/SQL_DATABASE/$SQL_DATABASE/g \
| sed s/SQL_PASSWORD/$SQL_PASSWORD/g \
> /tmp/script2.sql'

CMD ["mysqld_safe"]

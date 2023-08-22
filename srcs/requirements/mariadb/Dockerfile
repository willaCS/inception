# Use Debian as the base image
FROM debian:latest

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the MariaDB server configuration file
COPY conf/my.conf /etc/mysql/my.cnf

RUN echo "DROP DATABASE IF EXISTS test; \
    CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci; \
    CREATE USER IF NOT EXISTS '${SQL_USER}'@'localhost' IDENTIFIED BY '${SQL_PASSWORD}'; \
    GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}'; \
    FLUSH PRIVILEGES; \
    SHOW GRANTS FOR '${SQL_USER}';" > /etc/my.sql

# Set up the entry point
ENTRYPOINT ["mysqld_safe"]

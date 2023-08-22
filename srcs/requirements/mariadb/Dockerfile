# Use Debian as the base image
FROM debian:latest

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the MariaDB server configuration file
COPY conf/my.cnf /etc/mysql/my.cnf

# Set up the entry point
ENTRYPOINT ["mysqld_safe --init-file=/etc/my.sql;"]

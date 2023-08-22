# Use Debian as the base image
FROM debian:latest

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Update the package repository and install MariaDB server
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the MariaDB server configuration file
COPY my.cnf /etc/mysql/my.cnf

# Expose the default MariaDB port
EXPOSE 3306

# Set up the entry point
ENTRYPOINT ["mysqld"]

# Set default command
CMD ["--datadir=/var/lib/mysql", "--user=mysql"]
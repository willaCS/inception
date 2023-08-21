# Use the Debian base image
FROM debian:latest

# Install PHP-FPM and other dependencies
RUN apt-get update && apt-get install -y wget less \
    php-fpm \
    php-mysql \
    php-gd \
    php-xml \
    php-mbstring \
    php-curl \
    php-zip \
	mariadb-server \
	mariadb-client \
    && rm -rf /var/lib/apt/lists/*

# Install wordpress cli
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /bin/wp

# Add config
COPY tools/php-fpm.conf /etc/php/7.4/fpm/

# Add group
RUN groupadd wordpress \
	&& useradd -g wordpress wordpress

# Add Logs Folder
RUN mkdir -p /usr/logs/php-fpm/ && \
	chown -R wordpress:wordpress /usr/logs/php-fpm/

# Create run
RUN mkdir /app
WORKDIR /app

RUN wget https://wordpress.org/wordpress-6.3.tar.gz && \
	tar -zxvf wordpress-6.3.tar.gz && \
	mv wordpress/* . && \
	rm -rf wordpress wordpress-6.3.tar.gz && \
	chown -R wordpress:wordpress /app && \
	chmod -R 755 /app

COPY tools/start.sh /app/start.sh

RUN chmod 707 /app/start.sh

USER wordpress:wordpress
CMD ["/app/start.sh"]

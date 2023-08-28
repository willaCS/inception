# Use the Debian base image
FROM debian:bullseye

# Install PHP-FPM and other dependencies
RUN apt-get update && apt-get install -y wget iputils-ping less \
    php7.4-fpm \
	php7.4 \
	php7.4-mysql \
	php7.4-fpm \
	php7.4-curl \
	php7.4-gd \
	php7.4-intl \
	php7.4-mbstring \
	php7.4-soap \
	php7.4-xml \
	php7.4-xmlrpc \
	php7.4-zip \
	mariadb-server \
	mariadb-client \
    && rm -rf /var/lib/apt/lists/*


RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /bin/wp

COPY tools/php-fpm.conf /etc/php/7.4/fpm/

RUN groupadd wordpress \
	&& useradd -g wordpress wordpress

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

COPY tools/start.sh /tmp/start.sh

RUN chmod 707 /tmp/start.sh

USER wordpress:wordpress
CMD ["/tmp/start.sh"]

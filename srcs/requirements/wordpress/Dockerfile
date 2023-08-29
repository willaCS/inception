FROM debian:bullseye

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

# Download Wordpress cli
RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&&		chmod +x wp-cli.phar \
	&&		mv wp-cli.phar /bin/wp

# Download Wordpress
RUN			wget https://wordpress.org/wordpress-6.3.tar.gz						\
	&&		tar -zxvf wordpress-6.3.tar.gz										\
	&&		mv wordpress/* .													\
	&&		rm -rf wordpress wordpress-6.3.tar.gz

COPY tools/php-fpm.conf /etc/php/7.4/fpm/
COPY tools/start.sh /tmp/start.sh

RUN mkdir /app
WORKDIR /app

RUN 		groupadd wordpress													\
	&&		useradd -g wordpress wordpress										\
	&&		mkdir -p /usr/logs/php-fpm/											\
	&&		mkdir -p /run/php/													\
	&&		chown -R wordpress:wordpress /usr/logs/php-fpm/						\
	&&		chown -R wordpress:wordpress /run/php/								\
	&&		chown -R wordpress:wordpress /app									\
	&&		chmod -R 755 /usr/logs/php-fpm										\
	&&		chmod 707 /tmp/start.sh												

USER wordpress:wordpress
CMD ["/tmp/start.sh"]

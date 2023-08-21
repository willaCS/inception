FROM debian:bullseye

# Install PHP-FPM and other dependencies
RUN apt-get update -y && apt-get install -y \
	wget \
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

# Create app folder
RUN mkdir /app
WORKDIR /app

# Create Group wordpress
RUN groupadd wordpress
	&& useradd -g wordpress wordpress

# Expose port 9000 for PHP-FPM
EXPOSE 9000


# CMD [""]
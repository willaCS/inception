# Use the Debian base image
FROM debian:latest

# Install PHP-FPM and other dependencies
RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    php-gd \
    php-xml \
    php-mbstring \
    php-curl \
    php-zip \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /run/php

# Set the working directory
WORKDIR /var/www/html

# Start PHP-FPM
CMD ["php-fpm7.4", "-F"]

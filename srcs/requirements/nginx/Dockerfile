# Pull base image
FROM debian:latest

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx

RUN mkdir /usr/share/nginx/logs

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY test /usr/share/nginx/html

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]
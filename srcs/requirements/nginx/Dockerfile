# Use Debian as the base image
FROM debian:latest

# Install NGINX and other necessary packages
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN rm /etc/nginx/sites-enabled/default

# Copy custom configuration to NGINX configuration directory
COPY conf/nginx.conf /etc/nginx/sites-enabled/default

# Copy content files to NGINX content directory
COPY index.html /var/www/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

RUN mkdir -p /etc/nginx/ssl && openssl req -x509 \
    -sha256 -days 356 \
    -nodes \
    -newkey rsa:2048 \
    -subj "/CN=localhost/C=FR/L=Paris/O=awillems@42" \
    -keyout /etc/nginx/ssl/inception.key \
    -out /etc/nginx/ssl/inception.crt

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
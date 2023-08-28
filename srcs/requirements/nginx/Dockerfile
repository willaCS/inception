FROM debian:latest

RUN apt-get update && \
    apt-get install -y nginx openssl iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN rm /etc/nginx/sites-enabled/default
COPY conf/nginx.conf /etc/nginx/sites-enabled/

RUN mkdir -p /etc/nginx/ssl && openssl req -x509 \
    -sha256 -days 356 \
    -nodes \
    -newkey rsa:2048 \
    -subj "/CN=localhost/C=FR/L=Paris/O=awillems@42" \
    -keyout /etc/nginx/ssl/inception.key \
    -out /etc/nginx/ssl/inception.crt

RUN mkdir /app
WORKDIR /app

EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
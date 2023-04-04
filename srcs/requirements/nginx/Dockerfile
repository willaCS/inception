# Pull base image
FROM debian:latest

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir	/usr/share/nginx/logs \
			/etc/nginx/ssl

# Generate a New Public Key from the Private Key
RUN openssl	genrsa \
		-out /etc/nginx/ssl/awillems.rsa.key 2048

# Creating a certifivate request
RUN openssl req -new \
		-key /etc/nginx/ssl/awillems.rsa.key \
		-out /etc/nginx/ssl/awillems.rsa.csr \
		-subj "/C=BE/ST=Bruxelles/L=Bruxelles/O=19 School/OU=awillems/CN=awillems/"

# Validating a self signed certifivate
RUN openssl x509 -req \
		-signkey /etc/nginx/ssl/awillems.rsa.key \
		-in /etc/nginx/ssl/awillems.rsa.csr \
		-out /etc/nginx/ssl/awillems.rsa.crt \
		-days 365

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY test /usr/share/nginx/html

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]
FROM nginx:alpine

ARG SSL_CERTIFICATE_FILE
ARG SSL_PRIVATE_KEY_FILE

COPY index.html /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/
COPY $SSL_CERTIFICATE_FILE /etc/ssl/
COPY $SSL_PRIVATE_KEY_FILE /etc/ssl/

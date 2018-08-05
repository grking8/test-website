FROM nginx:alpine

ARG CERTIFICATE_FILE
ARG PRIVATE_KEY_FILE

COPY index.html /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/
COPY $CERTIFICATE_FILE /etc/ssl/
COPY $PRIVATE_KEY_FILE /etc/ssl/ 


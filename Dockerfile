FROM nginx:alpine

ARG CERTIFICATE_FILE
ARG PRIVATE_KEY_FILE

RUN echo "hello to you $CERTIFICATE_FILE and goodbye to you $PRIVATE_KEY_FILE"
RUN ls

COPY index.html /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/
COPY $CERTIFICATE_FILE /etc/ssl/
COPY $PRIVATE_KEY_FILE /etc/ssl/ 


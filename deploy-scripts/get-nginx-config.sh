#!/usr/bin/env bash 

set -xe

. deploy.cfg
apt-get -y install gettext-base
cd ../
envsubst '${SSL_CERTIFICATE_FILE},${SSL_PRIVATE_KEY_FILE}' < $WEBSERVER_LIB_REPO/ssl/nginx/default.conf > project/default.conf

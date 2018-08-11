#!/usr/bin/env bash

set -e

# create SSL files
. deploy.cfg
cd ../$DEPLOY_SCRIPTS_LIB_REPO/ssl
./create-ssl-files.sh $SSL_CERTIFICATE $SSL_PRIVATE_KEY $SSL_CERTIFICATE_FILE $SSL_PRIVATE_KEY_FILE
mkdir -p ../../project/config
mv $SSL_PRIVATE_KEY_FILE ../../project/config
mv $SSL_CERTIFICATE_FILE ../../project/config

# create webserver config
apt-get -y install gettext-base
cd ../../
envsubst '${SSL_CERTIFICATE_FILE},${SSL_PRIVATE_KEY_FILE}' < $WEBSERVER_LIB_REPO/ssl/nginx/default.conf > project/config/default.conf


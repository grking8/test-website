#!/usr/bin/env bash 

set -xe

. deploy.cfg
apt-get -y install gettext-base
cd ../
envsubst '${SSL_CERTIFICATE_FILE},${SSL_PRIVATE_KEY_FILE}' < $LIB_REPO$WEBSERVER_CONFIG_DIR$WEBSERVER_CONFIG_FILE > project/$WEBSERVER_CONFIG_FILE

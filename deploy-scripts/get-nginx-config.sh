#!/usr/bin/env bash 

set -xe

. deploy.cfg
apt-get -y install gettext-base
ssh-keyscan -H $LIB_GITHOST >> ~/.ssh/known_hosts
cd ../
git clone $LIB_URL
envsubst '${SSL_CERTIFICATE_FILE},${SSL_PRIVATE_KEY_FILE}' < website/ssl/nginx/default.conf > project/default.conf

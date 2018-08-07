#!/usr/bin/env bash 

set -xe

. deploy.cfg
apt-get -y install gettext-base
ssh-keyscan -H gitlab.com >> ~/.ssh/known_hosts
cd ../
git clone git@gitlab.com:zorncapital-devops/website.git
envsubst '${SSL_CERTIFICATE_FILE},${SSL_PRIVATE_KEY_FILE}' < website/ssl/nginx/default.conf > project/default.conf

#!/usr/bin/env bash 

set -xe

. deploy.cfg

apt-get -y install gettext-base

ssh-keyscan -H gitlab.com >> ~/.ssh/known_hosts
cd ../
mkdir -p devops
cd devops
git clone git@gitlab.com:zorncapital-devops/website.git

envsubst < website/ssl/nginx/default.conf > ../project/default.conf


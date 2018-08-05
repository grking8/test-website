#!/usr/bin/env bash 

set xe

ssh-keyscan -H gitlab.com >> ~/.ssh/known_hosts
cd ../
mkdir -p devops
cd devops
git clone git@gitlab.com:zorncapital-devops/website.git

cp website/ssl/nginx/default.conf ../project/default.conf


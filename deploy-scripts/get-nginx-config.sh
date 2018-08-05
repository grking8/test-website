#!/usr/bin/env bash 

set xe

cd ../
mkdir -p devops
cd devops
yes yes | git clone --quiet git@gitlab.com:zorncapital-devops/website.git

cp website/ssl/nginx/default.conf ../project/default.conf


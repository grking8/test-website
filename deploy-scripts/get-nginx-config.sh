#!/usr/bin/env bash 

set xe

cat >> ~/.ssh/config << EOF
  StrictHostKeyChecking no
EOF

cd ../
mkdir -p devops
cd devops
git clone git@gitlab.com:zorncapital-devops/website.git

cp website/ssl/nginx/default.conf ../project/default.conf


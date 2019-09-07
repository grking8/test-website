#!/usr/bin/env sh

set -xe

apt-get update
apt-get install ca-certificates
mkdir $STATIC_DIR
cp -r src/* $STATIC_DIR
if [ -d ".well-known/acme-challenge" ]; then
    cp -r ".well-known" $STATIC_DIR
fi

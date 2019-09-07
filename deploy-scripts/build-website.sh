#!/usr/bin/env sh

set -xe

mkdir $STATIC_DIR
cp -r src/* $STATIC_DIR
apk add ca-certificates
if [ -d ".well-known/acme-challenge" ]; then
    cp -r ".well-known" $STATIC_DIR
fi

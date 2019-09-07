#!/usr/bin/env sh

set -xe

mkdir $STATIC_DIR
cp -r src/* $STATIC_DIR
if [ -d ".well-known/acme-challenge" ]; then
    cp -r ".well-known" $STATIC_DIR
fi

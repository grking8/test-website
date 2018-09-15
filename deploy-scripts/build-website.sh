#!/usr/bin/env sh

set -xe

mkdir -p $STATIC_DIR
cp -r src/* $STATIC_DIR
apk add ca-certificates

#!/usr/bin/env sh

set -xe

. deploy.cfg
mkdir -p $STATIC_DIR
cp -r src/* $STATIC_DIR
apk add ca-certificates

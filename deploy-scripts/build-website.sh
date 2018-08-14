#!/usr/bin/env sh

set -xe

DIR=/root/project/
. ${DIR}deploy.cfg
mkdir -p $STATIC_DIR
cp -r src/* $STATIC_DIR
echo printing working directory
echo $(pwd)

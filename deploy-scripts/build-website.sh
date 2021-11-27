#!/usr/bin/env sh

set -xe

mkdir "$STATIC_DIR"
cp -r src/* "$STATIC_DIR"

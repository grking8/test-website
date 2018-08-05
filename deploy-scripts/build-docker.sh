#!/usr/bin/env bash

set -xe

. deploy.cfg

docker build --tag "$CONTAINER_REGISTRY"/"$PROJECT_ID"/"$CIRCLE_PROJECT_REPONAME":"$CIRCLE_SHA1" \
             --build-arg CERTIFICATE_FILE=$CERTIFICATE_FILE \
             --build-arg PRIVATE_KEY_FILE=$PRIVATE_KEY_FILE .


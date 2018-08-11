#!/usr/bin/env sh

set -xe

DIR=/root/project/
. ${DIR}deploy.cfg
mv ${DIR}config/* .
rm -rf ${DIR}config
docker build --tag $CONTAINER_REGISTRY/$PROJECT_ID/$CIRCLE_PROJECT_REPONAME:$CIRCLE_SHA1 \
             --build-arg SSL_CERTIFICATE_FILE=$SSL_CERTIFICATE_FILE \
             --build-arg SSL_PRIVATE_KEY_FILE=$SSL_PRIVATE_KEY_FILE .

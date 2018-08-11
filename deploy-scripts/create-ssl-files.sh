#!/usr/bin/env bash

set -e

. deploy.cfg
cd ../$DEPLOY_SCRIPTS_LIB_REPO/ssl
./create-ssl-files.sh $SSL_CERTIFICATE $SSL_PRIVATE_KEY $SSL_CERTIFICATE_FILE $SSL_PRIVATE_KEY_FILE
mv $SSL_PRIVATE_KEY ../../project
mv $SSL_CERTIFICATE_FILE ../../project

#!/usr/bin/env sh

set -e

. deploy.cfg
ssh-keyscan -H $EXTERNAL_GITHOST >> ~/.ssh/known_hosts
cd ../
git clone $WEBSERVER_LIB_URL
git clone $DEPLOY_SCRIPTS_LIB_URL

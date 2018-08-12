#!/usr/bin/env sh

set -xe

DIR=/root/project/
export DIR
. ${DIR}deploy.cfg
mv ${DIR}config/* .
rm -rf ${DIR}config
cd  ..
${DEPLOY_SCRIPTS_LIB_REPO}/gcp/authenticate.sh
${DEPLOY_SCRIPTS_LIB_REPO}/build-push-docker.sh

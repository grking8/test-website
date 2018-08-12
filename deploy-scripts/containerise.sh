#!/usr/bin/env sh

set -xe

# prepare files
DIR=/root/project/
. ${DIR}deploy.cfg
mv ${DIR}config/* .
rm -rf ${DIR}config
cd  ..
# autthenticate GCP
${DEPLOY_SCRIPTS_LIB_REPO}/gcp/authenticate.sh
# build Docker image and push to container registry
${DEPLOY_SCRIPTS_LIB_REPO}/build-push-docker.sh

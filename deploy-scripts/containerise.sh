#!/usr/bin/env sh

set -e

# prepare files
DIR=/root/project/
export DIR
. ${DIR}deploy.cfg
mv ${DIR}config/* .
rm -rf ${DIR}config
cd  ..
# authenticate GCP
${DEPLOY_SCRIPTS_LIB_REPO}/gcp/authenticate.sh "$GCP_SERVICE_KEY" $GCP_PROJECT_ID $GCP_COMPUTE_ZONE
# build Docker image and push to container registry
${DEPLOY_SCRIPTS_LIB_REPO}/build-push-docker.sh $GCP_CONTAINER_REGISTRY $GCP_PROJECT_ID $SSL_CERTIFICATE_FILE $SSL_PRIVATE_KEY_FILE

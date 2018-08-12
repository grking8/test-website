#!/usr/bin/env sh

set -xe

DIR=/root/project/
. ${DIR}deploy.cfg
# autthenticate GCP
${DEPLOY_SCRIPTS_LIB_REPO}/gcp/authenticate.sh
# update instance
gcloud beta compute instances update-container $INSTANCE \
  --container-image ${CONTAINER_REGISTRY}/${PROJECT_ID}/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_SHA1}

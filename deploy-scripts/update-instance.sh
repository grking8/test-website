#!/usr/bin/env sh

set -xe

DIR=/root/project/
. ${DIR}deploy.cfg
# authenticate GCP
${DEPLOY_SCRIPTS_LIB_REPO}/gcp/authenticate.sh
# update instance
gcloud beta compute instances update-container $GCP_INSTANCE \
  --container-image ${GCP_CONTAINER_REGISTRY}/${GCP_PROJECT_ID}/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_SHA1}

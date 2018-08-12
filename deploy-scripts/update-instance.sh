#!/usr/bin/env sh

set -xe

DIR=/root/project/
. ${DIR}deploy.cfg
cd ..
echo "Authenticate to Google Cloud Platform..."
${DEPLOY_SCRIPTS_LIB_REPO}/gcp/authenticate.sh
gcloud beta compute instances update-container $GCP_INSTANCE \
  --container-image ${GCP_CONTAINER_REGISTRY}/${GCP_PROJECT_ID}/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_SHA1}

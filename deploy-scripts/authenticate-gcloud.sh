#!/usr/bin/env sh

set -e

DIR=/root/project/
. ${DIR}deploy.cfg
GCP_SERVICE_KEY_PATH=${DIR}/gcloud-service-key.json
echo "$GCP_SERVICE_KEY" | base64 --decode --ignore-garbage > $GCP_SERVICE_KEY_PATH
gcloud auth activate-service-account --key-file=$GCP_SERVICE_KEY_PATH
gcloud config set project $PROJECT_ID
gcloud config set compute/zone $COMPUTE_ZONE
gcloud auth configure-docker

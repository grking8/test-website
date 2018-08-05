#!/usr/bin/env bash

set -e

. deploy.cfg

GCP_SERVICE_KEY_PATH="$HOME"/gcloud-service-key.json
echo "$GCP_SERVICE_KEY" | base64 --decode --ignore-garbage > "$GCP_SERVICE_KEY_PATH"
gcloud auth activate-service-account --key-file="$GCLOUD_SERVICE_KEY_PATH"
gcloud config set project "$PROJECT_ID"
gcloud config set compute/zone "$COMPUTE_ZONE"
gcloud auth configure-docker


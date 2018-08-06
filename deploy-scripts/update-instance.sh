#!/usr/bin/env bash

set -xe

. deploy.cfg
gcloud beta compute instances update-container $INSTANCE \
  --container-image $CONTAINER_REGISTRY/$PROJECT_ID/$CIRCLE_PROJECT_REPONAME:$CIRCLE_SHA1

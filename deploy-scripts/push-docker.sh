#!/usr/bin/env sh

set -xe

. deploy.cfg
docker push $CONTAINER_REGISTRY/$PROJECT_ID/$CIRCLE_PROJECT_REPONAME:$CIRCLE_SHA1

#!/usr/bin/env sh

set -e

apk update
apk add openssh-client
apk add git
mkdir ~/.ssh
ssh-keyscan -H $BOOTSTRAP_REPO_DOMAIN >> ~/.ssh/known_hosts
mkdir bootstrap
cd bootstrap
git clone $BOOTSTRAP_REPO_URL
cd ..

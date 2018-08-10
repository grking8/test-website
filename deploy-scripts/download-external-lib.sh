#!/usr/bin/env bash

set -e

. deploy.cfg
ssh-keyscan -H $LIB_GITHOST >> ~/.ssh/known_hosts
cd ../
git clone $LIB_URL


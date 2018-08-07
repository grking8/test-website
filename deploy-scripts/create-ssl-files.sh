#!/usr/bin/env bash

set -e

. deploy.cfg
echo "$SSL_CERTIFICATE" | base64 --decode --ignore-garbage > $SSL_CERTIFICATE_FILE
echo "$SSL_PRIVATE_KEY" | base64 --decode --ignore-garbage > $SSL_PRIVATE_KEY_FILE

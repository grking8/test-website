#!/usr/bin/env sh

set -e

echo hello
echo "<< pipeline.parameters.gcp-identity-service-account-key-path >>"
echo "${GCP_IDENTITY_SERVICE_ACCOUNT_KEY}" | base64 --decode --ignore-garbage > "<< pipeline.parameters.gcp-identity-service-account-key-path >>"
gcloud auth activate-service-account "$GCP_IDENTITY_SERVICE_ACCOUNT_EMAIL" --key-file="${GCP_IDENTITY_SERVICE_ACCOUNT_KEY_PATH}"
gcloud config set project "$GCP_PROJECT_ID"
gcloud config set auth/impersonate_service_account "$GCP_RESOURCE_SERVICE_ACCOUNT_EMAIL"

#!/bin/bash

set -euo pipefail

apt-get update && apt-get install -y lsb-release gnupg

export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

apt-get update && apt-get install -y google-cloud-sdk kubectl

export PATH="/usr/lib/google-cloud-sdk/bin:$PATH"
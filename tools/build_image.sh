#!/bin/bash

# Build docker image
# NOTE: Must have aws cli package installed in local environment and AWS credentials configured via 'aws configure'.
# We use this script instead of docker build directly because we need to force the hrcore.zip to be freshly downloaded,
# but Docker fairly aggressively caches layers, so downloading the zip within the image would result in potentially
# stale hrcore versions being deployed.

# Ensure errors cause immediate script failure
set -e

# Get the current repo
REPO="$(get_repo_name.sh)"
COMMIT=$(git rev-parse --short HEAD)
VERSION="$(./git_hao_version.sh)"

docker build --build-arg REPO=$REPO --build-arg COMMIT=$COMMIT --build-arg VERSION=$VERSION -f dockerfile -t $REPO .

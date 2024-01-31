#!/bin/bash
set -e

REPO="$(./get_repo_name.sh)"
COMMIT=$(git rev-parse --short HEAD)
VERSION="$(./git_hao_version.sh)"

ENV_CODE=$1

echo 'Building Docker image'
tools/build_image.sh $ENV_CODE
echo 'Logging into AWS ECR'

echo docker tag ${REPO}:latest 3192.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${ENV_CODE}
echo docker tag ${REPO}:latest 3192.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${VERSION}-${COMMIT}

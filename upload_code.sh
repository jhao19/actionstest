#!/bin/bash
VERSION=$(git describe --dirty=-dev)
echo Uploading code from git commit: $VERSION

REPO="$(get_repo_name.sh)"
echo $REPO

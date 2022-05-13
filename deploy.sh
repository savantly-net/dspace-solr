#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

REPO_URL=savantly/dspace-solr

docker buildx build --platform=linux/amd64 --load -t $REPO_URL .
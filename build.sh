#!/bin/bash
set -x
repo="kingsylin/svn-java"
version="1.1-alpine"
docker build -t ${repo} -t ${repo}:${version} .
docker push ${repo}
docker push ${repo}:${version}

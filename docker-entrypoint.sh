#!/bin/bash

set -x

app_name="${APP_NAME:-default}"
build_file="${BUILD_FILE:-ROOT.war}"
build_cmd="${BUILD_CMD:-clean package -Dmaven.test.skip=true}"

mkdir project

echo "yes" | svn co --username=${SVN_USER} --password=${SVN_PWD}  ${SVN_URL} project/${app_name}

cd  project/${app_name}

../../maven/bin/mvn ${build_cmd}

cd ../../

java -jar project/${app_name}/target/${build_file}
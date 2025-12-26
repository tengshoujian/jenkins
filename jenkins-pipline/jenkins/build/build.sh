#!/bin/bash

cp ./jenkins-piplinejava-app/target/*.jar ./jenkins/build

echo "*****************************"
echo "*** build docker image*******"
echo "*****************************"

cd ./jenkins-pipline/jenkins/build && \
  docker-compose -f docker-compose.yml  build --no-cache
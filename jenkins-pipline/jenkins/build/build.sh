#!/bin/bash

cp ./jenkins-pipline/java-app/target/*.jar ./jenkins-pipline/jenkins/build

echo "*****************************"
echo "*** build docker image*******"
echo "*****************************"

cd ./jenkins-pipline/jenkins/build && \
  docker-compose -f docker-compose.yml  build --no-cache
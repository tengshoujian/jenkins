#!/bin/bash

cp ./java-app/target/*.jar ./jenkins/build

echo "*****************************"
echo "*** build docker image*******"
echo "*****************************"

cd ./jenkins/build && \
  docker-compose -f docker-compose.yml  build --no-cache
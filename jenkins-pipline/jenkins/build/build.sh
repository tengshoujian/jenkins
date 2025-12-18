#!/bin/bash

cp ./java-app/target/*.jar ./jenkins/build

echo "*****************************"
echo "*** build docker image*******"
echo "*****************************"

cd ./jenkins/build && \
  docker-compose build  --no-cache
#!/bin/bash
echo "*************************"
echo "********Build jar********"
echo "*************************"
WORKSPACE=/workspaces/jenkins/home/home/workspace/maven-test

docker run --rm -v $WORKSPACE/jenkins-pipline/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"
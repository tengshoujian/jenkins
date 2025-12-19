#!/bin/bash
echo "*************************"
echo "********Build jar********"
echo "*************************"
WORKSPACE=/workspaces/jenkins/home/home/workspace/pipeline-docker-maven
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"
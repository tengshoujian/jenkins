#!/bin/bash
echo "*************************"
echo "********Build jar********"
echo "*************************"
WORKSPACE=/workspaces/kbi/workspace/pipeline-docker-maven
docker run --rm -v $WORKSPACE/javaapp:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"
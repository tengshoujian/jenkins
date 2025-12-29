#!/bin/bash


echo maven-project > /tmp/.auth
echo $TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@118.178.140.203:/tmp/.auth
scp -i /opt/prod ./jenkins-pipline/jenkins/deploy/publish prod-user@118.178.140.203:/tmp/publish
ssh -i /opt/prod prod-user@118.178.140.203 "bash /tmp/publish"


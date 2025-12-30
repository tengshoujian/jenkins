#!/bin/bash


echo maven-project > /tmp/.auth
echo $TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@8.219.119.72:/tmp/.auth
scp -i /opt/prod ./jenkins-pipline/jenkins/deploy/publish prod-user@8.219.119.72:/tmp/publish
scp -i /opt/prod ./jenkins-pipline/jenkins/deploy/docker-compose prod-user@8.219.119.72:~/maven/docker-compose
ssh -i /opt/prod prod-user@8.219.119.72 "bash /tmp/publish"
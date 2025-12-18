FROM jenkins/jenkins
USER root

ARG DOCKER_CLIENT=docker-17.06.2-ce.tgz
# ARG Docker_client = Docker-17.06.2-T.tgz

ARG DOCKER_COMPOSE_VERSION=1.29.2
ARG DOCKER_COMPOSE_PKG=docker-compose-Linux-x86_64
#install docker
# RUN yum install -y sudo yum-utils device-mapper-persistent-data lvm2
RUN cd /tmp/ && \
    curl -sSL -O https://download.docker.com/linux/static/stable/x86_64/${DOCKER_CLIENT} \
    && tar zxf ${DOCKER_CLIENT} \
    && mkdir -p /usr/local/bin \
    && mv ./docker/docker /usr/local/bin \
    && chmod +x /usr/local/bin/docker \
    && rm -rf /tmp/* 

RUN cd /usr/local/bin && \
    curl -sSL -O https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/${DOCKER_COMPOSE_PKG}  \
    && mv ${DOCKER_COMPOSE_PKG} docker-compose && \
    chmod +x docker-compose

RUN groupadd docker
RUN usermod -aG docker jenkins

USER jenkins
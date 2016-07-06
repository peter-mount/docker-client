FROM area51/java:serverjre-8
MAINTAINER Peter Mount <peter@retep.org>

ENV DOCKER_VERSION 1.11.0

RUN apk add --update ca-certificates openssh &&\
    curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz &&\
    tar zxf docker-${DOCKER_VERSION}.tgz -C / &&\
    ln -s /docker/docker /usr/bin/docker &&\
    rm -rf docker-${DOCKER_VERSION}.tgz /var/cache/apk/*


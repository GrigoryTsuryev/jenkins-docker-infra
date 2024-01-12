FROM jenkins/jenkins:alpine-jdk11
USER root
RUN apk update && apk add --no-cache docker-cli
USER jenkins
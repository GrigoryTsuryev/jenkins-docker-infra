FROM jenkins/jenkins:alpine-jdk11

USER root

# Install Docker CLI
RUN apk update && apk add --no-cache docker-cli

# Install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/kubectl

RUN apk add aws-cli

USER jenkins
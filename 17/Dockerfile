# Copyright (c) 2022 Jqshuv (Joshua Schmitt)
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM ghcr.io/upackages/ubuntu:latest

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source "https://github.com/upackages/java"
LABEL org.opencontainers.image.description The Java 17 version by Unately

RUN apt-get -qq update && \
    apt-get -qq -y --no-install-recommends install gnupg software-properties-common && \
    curl -s https://repos.azul.com/azul-repo.key | sudo gpg --dearmor -o /usr/share/keyrings/azul.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | sudo tee /etc/apt/sources.list.d/zulu.list && \
    apt-get -qq update && \
    apt-get -qq -y dist-upgrade && \
    apt-get -qq -y --no-install-recommends install zulu17-ca-jdk-headless && \
    apt-get -qq -y purge gnupg software-properties-common && \
    apt -y autoremove && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/zulu17-ca-amd64

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
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 && \
    apt-add-repository "deb https://repos.azul.com/azure-only/zulu/apt stable main" && \
    apt-get -qq update && \
    apt-get -qq -y dist-upgrade && \
    apt-get -qq -y --no-install-recommends install zulu-17-azure-jre-headless && \
    apt-get -qq -y purge gnupg software-properties-common && \
    apt -y autoremove && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/zulu17-ca-amd64
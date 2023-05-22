FROM node:current-slim

WORKDIR /work

RUN apt-get update \
    && mkdir -p /usr/share/man/man1 \
    && apt-get install -y \
        openjdk-11-jre-headless \
    && rm -rf /var/lib/apt/lists/*
RUN npm install -g firebase-tools

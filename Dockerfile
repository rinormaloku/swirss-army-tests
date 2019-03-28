FROM node:10-alpine

ENV LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" ALPINE_NODE_REPO="oznu/alpine-node"

RUN npm install --global newman@4.4.1;

WORKDIR /etc/newman

RUN apk update && \ 
    apk upgrade && \
    apk add bash

RUN apk add --no-cache curl

CMD [ "/bin/bash" ]
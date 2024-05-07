FROM alpine:3.14

RUN apk add --no-cache \
    bash \
    curl \
    git \
    jq \
    openssh-client \
    python3 \
    py3-pip \
    py3-setuptools \
    py3-wheel \
    rsync \
    tar \
    unzip \
    zip \
    glab

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan gitlab.com >> ~/.ssh/known_hosts
FROM alpine:3.8

LABEL maintainer="estafette.io" \
      description="The hugo container is used to generate the documentation at estafette.io"

RUN apk add --update --no-cache \
    git \
    openssh \
    curl \
    && rm -rf /var/cache/apk/*

ENV HUGO_VERSION=0.54

RUN curl -fSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" -o /tmp/hugo.tar.gz \
    && tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin
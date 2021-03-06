FROM alpine:3.8

LABEL maintainer="estafette.io" \
      description="The hugo container is used to generate the documentation at estafette.io"

RUN apk add --update --no-cache \
    git \
    openssh \
    curl \
    && rm -rf /var/cache/apk/*

RUN curl -fSL "https://github.com/gohugoio/hugo/releases/download/v0.49.2/hugo_0.49.2_Linux-64bit.tar.gz" -o /tmp/hugo.tar.gz \
    && tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin
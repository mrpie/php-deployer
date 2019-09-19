FROM php:7.2-alpine

ENV DEPLOYER_VERSION=6.3.0

RUN apk update --no-cache \
    && apk add --no-cache \
        openssh-client rsync

RUN curl -L https://deployer.org/releases/v$DEPLOYER_VERSION/deployer.phar > /usr/local/bin/dep \
    && chmod +x /usr/local/bin/dep

CMD ["php", "-a"]

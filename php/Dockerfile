FROM php:5.6.26-fpm-alpine

MAINTAINER alexandre menezes "alexandre.fmenezes@owasp.org"

RUN apk add --no-cache --virtual .build-deps \
  php5-mysqli

COPY scripts/conf-php.sh /opt/conf-php.sh
COPY scripts/php.ini /usr/local/etc/php/php.ini

RUN ln -s /usr/lib/php5/modules/mysqli.so /usr/local/lib/php/extensions/no-debug-non-zts-20131226/mysqli.so

RUN sh /opt/conf-php.sh

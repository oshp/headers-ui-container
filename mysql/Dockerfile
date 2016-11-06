FROM mysql:5.5.52

MAINTAINER alexandre menezes "alexandre.fmenezes@owasp.org"

COPY scripts/conf-db.sh /opt/conf-db.sh

RUN apt-get update && apt-get install -y curl

RUN curl -o /opt/headers.sql \
  https://dl.dropboxusercontent.com/u/6427240/headers.sql \
  && apt-get remove -y curl

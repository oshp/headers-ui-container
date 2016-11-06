FROM nginx:1.10.1-alpine

MAINTAINER alexandre menezes "alexandre.fmenezes@owasp.org"

COPY scripts/default.conf /etc/nginx/conf.d/default.conf

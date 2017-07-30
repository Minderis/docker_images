FROM httpd:2.4.25-alpine

RUN apk update && apk add mc apache2 apache2-proxy

COPY src/httpd.conf /usr/local/apache2/conf/httpd.conf

COPY src/httpd-vhosts.conf src/proxy-html.conf src/ipb-app.conf src/operational-reports-app.conf src/updateConfig.sh /usr/local/apache2/conf/extra/



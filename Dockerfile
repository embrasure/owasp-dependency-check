FROM java:8-alpine

MAINTAINER Luke Sigler <lukesigler@outlook.com>

RUN wget http://dl.bintray.com/jeremy-long/owasp/dependency-check-1.4.2-release.zip && \ 
    unzip dependency-check-1.4.0-release.zip && \
    mv dependency-check /tmp/

ADD docker-entrypoint.sh /tmp/docker-entrypoint.sh

VOLUME "/tmp/src /tmp/reports /tmp/suppressions"

RUN chmod +x /tmp/docker-entrypoint.sh

WORKDIR /tmp/report

ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
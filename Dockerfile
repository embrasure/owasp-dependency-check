FROM java:8-alpine

MAINTAINER Luke Sigler <lukesigler@outlook.com>

ENV PROJECT_NAME "generic project"

RUN apk update && \
    apk add bash curl wget && \
    rm -rf /tmp/* /var/cache/apk/*

RUN curl -L https://github.com/aelsabbahy/goss/releases/download/v0.2.1/goss-linux-amd64 > /usr/local/bin/goss && chmod +rx /usr/local/bin/goss

RUN wget -qO- -O owasp.zip http://dl.bintray.com/jeremy-long/owasp/dependency-check-1.4.2-release.zip && \
    unzip owasp.zip && \
    rm owasp.zip && \
    mv dependency-check /tmp/

RUN mkdir /tmp/goss

RUN /tmp/dependency-check/bin/dependency-check.sh --updateonly 

ADD docker-entrypoint.sh /tmp/docker-entrypoint.sh

RUN chmod +x /tmp/docker-entrypoint.sh

WORKDIR /tmp/report

RUN for i in $(ls -d /tmp/*); do echo ${i}; done

ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
FROM alpine:3.13

RUN apk add -U opendkim socat \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /
COPY opendkim/ /etc/opendkim/
COPY opendkim.conf /etc/opendkim.conf

EXPOSE 8891

ENTRYPOINT ["/entrypoint.sh"]

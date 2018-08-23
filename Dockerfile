FROM alpine:3.8

RUN apk add --update --no-cache mysql-client
COPY backup.sh /usr/bin/backup
RUN chmod +x /usr/bin/backup

ENTRYPOINT ["/usr/bin/backup"]

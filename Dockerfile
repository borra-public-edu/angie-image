FROM alpine:3.24

LABEL org.opencontainers.image.authors="Release Engineering Team <devops@tech.wbsrv.ru>"

RUN set -x \
     && apk add --no-cache ca-certificates curl \
     && curl -o /etc/apk/keys/angie-signing.rsa https://angie.software/keys/angie-signing.rsa \
     && echo "https://download.angie.software/angie/alpine/v3.23/main" >> /etc/apk/repositories \
     && apk add --no-cache --allow-untrusted angie angie-module-geoip2 angie-module-njs \
     && rm /etc/apk/keys/angie-signing.rsa \
     && ln -sf /dev/stdout /var/log/angie/access.log \
     && ln -sf /dev/stderr /var/log/angie/error.log

EXPOSE 80

CMD ["angie", "-g", "daemon off;"]

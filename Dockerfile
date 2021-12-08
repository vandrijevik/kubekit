FROM alpine

RUN apk update

RUN apk upgrade

RUN apk add \
  bash \
  curl \
  fish \
  moreutils \
  mtr \
  openssl \
  postgresql-client

CMD ["/usr/bin/fish"]

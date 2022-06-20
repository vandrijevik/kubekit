FROM alpine

RUN apk update

RUN apk upgrade

RUN apk add \
  bash \
  curl \
  fish \
  moreutils \
  mysql-client \
  mtr \
  openssl \
  postgresql-client \
  redis \
  tmux

CMD ["/usr/bin/fish"]

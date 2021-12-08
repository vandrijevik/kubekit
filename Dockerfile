FROM alpine

RUN apk update

RUN apk upgrade

RUN apk add \
  bash \
  curl \
  mtr \
  openssl

CMD ["/bin/bash"]

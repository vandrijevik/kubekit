FROM alpine

RUN apk update

RUN apk add \
  bash \
  curl \
  mtr \
  openssl

CMD ["/bin/bash"]

FROM alpine

RUN apk update

RUN apk add \
  bash \
  curl \
  mtr

ENTRYPOINT ["/bin/bash"]

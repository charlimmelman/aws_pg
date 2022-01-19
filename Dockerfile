FROM alpine

RUN apk update && \
  apk add --no-cache \
  bash \
  build-base \
  postgresql-dev \
  postgresql-client \ 
  curl \
  sudo \
  unzip \
  python3 \
  py3-pip && \
  pip3 install --upgrade pip && \
  pip3 install --no-cache-dir awscli && \
  rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
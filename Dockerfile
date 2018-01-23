FROM alpine:edge

RUN apk --upgrade add \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-rake \
  ruby-minitest \
  ruby-dev \
  git \
  && \
  rm -fr /usr/share/ri

COPY files /

CMD ["/bin/sh"]

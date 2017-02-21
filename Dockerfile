FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.0.1

RUN gem install kmts --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["km_send"]
CMD ["--help"]

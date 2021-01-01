FROM ruby:3.0.0-alpine3.12

RUN apk add --update --no-cache \
  build-base \
  file \
  less \
  nodejs \
  postgresql-client \
  postgresql-dev \
  yarn \
  && adduser --disabled-password --home '/app' app;

WORKDIR /app

USER app

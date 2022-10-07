FROM ruby:2.7-alpine

RUN apk update && apk add bash build-base nodejs postgresql-dev tzdata

RUN mkdir /length
WORKDIR /length

COPY Gemfile Gemfile.lock ./

FROM ruby:2.7-alpine

RUN apk update && apk add bash build-base nodejs postgresql-dev tzdata

RUN mkdir /project
WORKDIR /project

COPY Gemfile Gemfile.lock ./

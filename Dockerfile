# Dockerfile to build a container for amtool
# amtool is a cli tool for interacting with the alertmanager api.

FROM golang:1.9-alpine3.6
MAINTAINER Anthony Rogliano <aroglian@cisco.com>
LABEL Description="amtool docker image"

WORKDIR /amtool

RUN apk update \
  && apk upgrade \
  && apk add --no-cache \
         git \
  && go get github.com/prometheus/alertmanager/cmd/amtool \
  && apk del git

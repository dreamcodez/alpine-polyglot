FROM alpine:3.5
WORKDIR /tmp

COPY bin/install-os-deps bin/install-os-deps
RUN bin/install-os-deps

COPY go-alpine-patches/ go-alpine-patches/
COPY bin/install-go bin/install-go
RUN bin/install-go

RUN rm -rf /tmp/*

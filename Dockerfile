FROM alpine:3.5
WORKDIR /tmp

# os deps
COPY bin/phase1/ bin/phase1/
RUN bin/phase1/install

# polyglot file deps
COPY go-alpine-patches/ go-alpine-patches/

# polyglot install
COPY bin/phase2/ bin/phase2/
RUN bin/phase2/install

RUN rm -r /tmp/*

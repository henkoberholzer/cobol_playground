FROM alpine

RUN mkdir -p /development/installs/
RUN mkdir -p /development/src/

RUN apk add --no-cache bash
RUN apk add --no-cache git
RUN apk add --no-cache perl
RUN apk add --no-cache grep
RUN apk add --no-cache autoconf
RUN apk add --no-cache automake
RUN apk add --no-cache gawk
RUN apk add --no-cache build-base

COPY hercules-3.13.tar.gz /development/installs/
WORKDIR /development/installs/
RUN tar xvzf /development/installs/hercules-3.13.tar.gz

./configure
make
make install

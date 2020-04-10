FROM alpine

RUN mkdir -p /development/installs/
RUN mkdir -p /development/src/
WORKDIR /development/installs/

RUN apk add --no-cache bash
RUN apk add --no-cache git

COPY hercules-3.13.tar.gz /development/installs/
RUN tar xvzf /development/installs/hercules-3.13.tar.gz

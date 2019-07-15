#!/usr/bin/env bash

cd $(dirname $0)

docker run \
    -v $PWD/..:/go/src/github.com/sfunkhouser/draft \
    --workdir /go/src/github.com/sfunkhouser/draft \
    deis/go-dev:v0.22.0 \
    make $@

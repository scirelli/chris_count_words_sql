#!/usr/bin/env bash
docker run \
    --rm \
    --name chris_test \
    --env POSTGRES_PASSWORD=password \
    --volume `pwd`/sql:/docker-entrypoint-initdb.d \
    --detach \
    --publish 5432:5432 \
    postgres:latest

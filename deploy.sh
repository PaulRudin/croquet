#!/bin/bash

# configured to accept connections from certain ip addresses only
# TODO - https://docs.docker.com/engine/security/https/#create-a-ca-server-and-client-keys-with-openssl
export DOCKER_HOST=histoncroquet.org:2375


compose () {
    docker-compose -f docker-compose.yml $@
}

compose build
compose run --rm  web bash -c "./manage.py migrate"
compose up -d


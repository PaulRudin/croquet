#!/bin/bash

# configured to accept connections from certain ip addresses only
# TODO - https://docs.docker.com/engine/security/https/#create-a-ca-server-and-client-keys-with-openssl
export DOCKER_HOST=histoncroquet.org:2375

STACK=croquet

compose () {
    docker-compose -f docker-compose.yml $@
}

deploy () {
    docker stack deploy -c docker-compose.yml $STACK
}

remove () {
    docker stack rm $STACK
}

compose build

# compose doesn't create secrets so have to use stack deploy
# stack deploy fails if there's already a running stack, so have to remove first
#

remove

deploy

docker run --rm croquet-web bash -c "./manage.py migrate"

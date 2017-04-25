#!/bin/bash

# configured to accept connections from certain ip addresses only
# TODO - https://docs.docker.com/engine/security/https/#create-a-ca-server-and-client-keys-with-openssl
DOCKER_HOST=histoncroquet.org:2375

COMPOSE="docker-compose.exe -H $DOCKER_HOST"
echo $COMPOSE
$COMPOSE build 
$COMPOSE up -d
$COMPOSE exec web bash -c "./manage.py migrate"

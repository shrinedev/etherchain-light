#!/usr/bin/env bash

MACHINE=$1

if [ -z "${MACHINE}" ]; then
    echo "No machine provided. Exiting."
    exit 1
fi

eval $(docker-machine env $MACHINE)

docker volume create --name=data-volume
docker-compose up -d --build

echo 'Done.'

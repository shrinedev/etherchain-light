#!/bin/bash

docker volume create --name=data-volume
docker-compose -f dev-docker-compose.yml up --build

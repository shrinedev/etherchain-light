#!/bin/bash
docker volume create --name=data-volume
docker-compose -f docker-compose.yml up --build

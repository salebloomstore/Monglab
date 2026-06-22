#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-sg/docker-compose.yml down -v --remove-orphans
docker ps -aq --filter name=sharde-everes-sg | xargs -r docker rm -f
docker compose --env-file .env -f sharde-everes-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-everes-sg restarted successfully!"

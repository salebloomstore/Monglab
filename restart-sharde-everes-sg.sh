#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-sg/docker-compose.yml down -v --remove-orphans
docker compose --env-file .env -f sharde-everes-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-everes-sg restarted successfully!"

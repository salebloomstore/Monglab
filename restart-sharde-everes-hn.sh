#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-hn/docker-compose.yml down -v --remove-orphans
docker compose --env-file .env -f sharde-everes-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-everes-hn restarted successfully!"

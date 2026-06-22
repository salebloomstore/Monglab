#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-sg/docker-compose.yml down -v --remove-orphans
docker ps -aq --filter name=sharde-fansip-sg | xargs -r docker rm -f
docker compose --env-file .env -f sharde-fansip-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-sg restarted successfully!"

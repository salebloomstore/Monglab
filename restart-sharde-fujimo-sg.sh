#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-sg/docker-compose.yml down -v --remove-orphans
docker ps -aq --filter name=sharde-fujimo-sg | xargs -r docker rm -f
docker compose --env-file .env -f sharde-fujimo-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-sg restarted successfully!"

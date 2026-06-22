#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-hn/docker-compose.yml down -v --remove-orphans
docker ps -aq --filter name=sharde-fujimo-hn | xargs -r docker rm -f
docker compose --env-file .env -f sharde-fujimo-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-hn restarted successfully!"

#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-hn/docker-compose.yml down -v --remove-orphans
docker ps -aq --filter name=sharde-fansip-hn | xargs -r docker rm -f
docker compose --env-file .env -f sharde-fansip-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-hn restarted successfully!"

#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-dn/docker-compose.yml down -v --remove-orphans
docker compose --env-file .env -f sharde-fujimo-dn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-dn restarted successfully!"

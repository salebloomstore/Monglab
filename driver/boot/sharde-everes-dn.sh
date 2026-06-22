#!/bin/bash

set -e

docker compose --env-file .env -f server/sharde-everes-dn/docker-compose.yml up -d --build --force-recreate

echo "sharde-everes-dn boot successfully!"

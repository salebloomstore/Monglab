#!/bin/bash

set -e

docker compose --env-file .env -f server/sharde-fujimo-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-hn boot successfully!"

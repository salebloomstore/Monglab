#!/bin/bash

set -e

docker compose --env-file .env -f server/sharde-fujimo-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-sg boot successfully!"

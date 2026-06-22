#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-hn started successfully!"

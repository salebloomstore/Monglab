#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-hn started successfully!"

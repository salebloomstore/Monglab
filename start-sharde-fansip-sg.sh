#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-sg started successfully!"

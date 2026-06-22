#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-sg started successfully!"

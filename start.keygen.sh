#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

docker compose --env-file .env -f keygen/docker-compose.yml up -d

sudo chown 1000:1000 -R . && sudo chmod 777 -R .

echo "Docker Compose started successfully!"

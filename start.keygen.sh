#!/bin/bash

set -e

docker compose --env-file .env -f keygen/docker-compose.yml up -d

echo "Docker Compose started successfully!"

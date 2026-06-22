#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-sg/docker-compose.yml down -v --remove-orphans

echo "sharde-fansip-sg downed successfully!"

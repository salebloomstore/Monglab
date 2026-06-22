#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-sg/docker-compose.yml down -v --remove-orphans

echo "sharde-fujimo-sg downed successfully!"

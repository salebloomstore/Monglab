#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-hn/docker-compose.yml down -v --remove-orphans

echo "sharde-fansip-hn downed successfully!"

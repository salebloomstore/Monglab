#!/bin/bash

set -e

docker compose --env-file .env -f server/sharde-matter-hn/docker-compose.yml down -v --remove-orphans

echo "sharde-matter-hn downed successfully!"

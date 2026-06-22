#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-hn/docker-compose.yml down -v --remove-orphans

echo "sharde-fujimo-hn downed successfully!"

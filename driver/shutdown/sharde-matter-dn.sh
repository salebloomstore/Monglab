#!/bin/bash

set -e

docker compose --env-file .env -f server/sharde-matter-dn/docker-compose.yml down -v --remove-orphans

echo "sharde-matter-dn shutdowned successfully!"

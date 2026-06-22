#!/bin/bash

set -e

docker compose --env-file .env -f server/sharde-fansip-dn/docker-compose.yml down -v --remove-orphans

echo "sharde-fansip-dn shutdowned successfully!"

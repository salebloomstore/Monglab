#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-matter-hn/docker-compose.yml down -v --remove-orphans

echo "sharde-matter-hn shutdowned successfully!"

#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-matter-dn/docker-compose.yml up -d --build --force-recreate

echo "sharde-matter-dn boot successfully!"

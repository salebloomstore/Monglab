#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-matter-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-matter-sg boot successfully!"

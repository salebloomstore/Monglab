#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-matter-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-matter-hn boot successfully!"

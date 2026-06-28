#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-fansip-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-hn boot successfully!"

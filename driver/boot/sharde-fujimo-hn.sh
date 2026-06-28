#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-fujimo-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-hn boot successfully!"

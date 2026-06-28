#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-everes-hn/docker-compose.yml up -d --build --force-recreate

echo "sharde-everes-hn boot successfully!"

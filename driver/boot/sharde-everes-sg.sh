#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-everes-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-everes-sg boot successfully!"

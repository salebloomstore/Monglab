#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/mongos-router-sg/docker-compose.yml up -d --build --force-recreate

echo "mongos-router-sg boot successfully!"

#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/mongos-router-dn/docker-compose.yml up -d --build --force-recreate

echo "mongos-router-dn boot successfully!"

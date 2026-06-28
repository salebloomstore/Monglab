#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/devlop-router-io/docker-compose.yml up -d --build --force-recreate

echo "devlop-router-io boot successfully!"

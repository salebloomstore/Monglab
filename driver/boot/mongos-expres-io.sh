#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/mongos-expres-io/docker-compose.yml up -d --build --force-recreate

echo "mongos-expres-io boot successfully!"

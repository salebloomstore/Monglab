#!/bin/bash

set -e

docker compose --env-file .env -f server/mongos-expres-io/docker-compose.yml up -d --build --force-recreate

echo "mongos-expres-io boot successfully!"

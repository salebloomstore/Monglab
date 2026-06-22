#!/bin/bash

set -e

docker compose --env-file .env -f server/mongos-router-hn/docker-compose.yml up -d --build --force-recreate

echo "mongos-router-hn boot successfully!"

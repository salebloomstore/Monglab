#!/bin/bash

set -e

docker compose --env-file .env -f server/devlop-router-io/docker-compose.yml up -d --build --force-recreate

echo "devlop-router-io boot successfully!"

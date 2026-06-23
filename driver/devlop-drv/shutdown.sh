#!/bin/bash

set -e

docker compose --env-file .env -f server/devlop-router-io/docker-compose.yml down -v --remove-orphans

echo "devlop-router-io shutdowned successfully!"

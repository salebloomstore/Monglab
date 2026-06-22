#!/bin/bash

set -e

docker compose --env-file .env -f server/mongos-router-sg/docker-compose.yml down -v --remove-orphans

echo "mongos-router-sg shutdowned successfully!"

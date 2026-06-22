#!/bin/bash

set -e

docker compose --env-file .env -f server/mongos-router-dn/docker-compose.yml down -v --remove-orphans

echo "mongos-router-dn shutdowned successfully!"

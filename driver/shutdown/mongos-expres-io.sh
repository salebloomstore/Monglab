#!/bin/bash

set -e

docker compose --env-file .env -f server/mongos-expres-io/docker-compose.yml down -v --remove-orphans

echo "mongos-expres-io shutdowned successfully!"

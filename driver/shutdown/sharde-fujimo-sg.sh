#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-fujimo-sg/docker-compose.yml down -v --remove-orphans

echo "sharde-fujimo-sg shutdowned successfully!"

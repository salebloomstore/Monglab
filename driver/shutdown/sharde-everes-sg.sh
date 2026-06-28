#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/sharde-everes-sg/docker-compose.yml down -v --remove-orphans

echo "sharde-everes-sg shutdowned successfully!"

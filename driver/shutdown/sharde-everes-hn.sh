#!/bin/bash

set -e

docker compose --env-file ../../.env -f ../../server/sharde-everes-hn/docker-compose.yml down -v --remove-orphans

echo "sharde-everes-hn downed successfully!"

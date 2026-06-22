#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-dn/docker-compose.yml down -v --remove-orphans

echo "sharde-everes-dn downed successfully!"

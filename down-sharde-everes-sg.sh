#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-sg/docker-compose.yml down -v --remove-orphans

echo "sharde-everes-sg downed successfully!"

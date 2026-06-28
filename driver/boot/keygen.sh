#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/keygen/docker-compose.yml up -d --build --force-recreate

sudo chown 1000:1000 -R ../../server/keygen && sudo chmod 777 -R ../../server/keygen

echo "Keygen boot successfully!"

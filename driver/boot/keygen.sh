#!/bin/bash

set -e

docker compose --env-file .env -f server/keygen/docker-compose.yml up -d

sudo chown 1000:1000 -R server/keygen && sudo chmod 777 -R server/keygen

echo "Keygen boot successfully!"

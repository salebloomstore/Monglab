#!/bin/bash

set -e

docker compose --env-file ../../.env -f ../../server/sharde-fansip-sg/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-sg boot successfully!"

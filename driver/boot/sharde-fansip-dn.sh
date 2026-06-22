#!/bin/bash

set -e

docker compose --env-file ../../.env -f ../../server/sharde-fansip-dn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-dn boot successfully!"

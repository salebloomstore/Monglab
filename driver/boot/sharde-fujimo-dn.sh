#!/bin/bash

set -e

docker compose --env-file ../../.env -f ../../server/sharde-fujimo-dn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fujimo-dn boot successfully!"

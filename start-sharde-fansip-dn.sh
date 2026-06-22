#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-dn/docker-compose.yml up -d --build --force-recreate

echo "sharde-fansip-dn started successfully!"

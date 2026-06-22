#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-hn/docker-compose.yml up -d --build --force-recreate

sudo chown 1000:1000 -R sharde-everes-hn && sudo chmod 777 -R sharde-everes-hn

echo "sharde-everes-hn started successfully!"

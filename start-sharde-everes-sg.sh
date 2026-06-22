#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-sg/docker-compose.yml up -d --build --force-recreate

sudo chown 1000:1000 -R sharde-everes-sg && sudo chmod 777 -R sharde-everes-sg

echo "sharde-everes-sg started successfully!"

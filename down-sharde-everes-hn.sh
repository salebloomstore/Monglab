#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-hn/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-everes-hn && sudo chmod 777 -R sharde-everes-hn

echo "sharde-everes-hn downed successfully!"
